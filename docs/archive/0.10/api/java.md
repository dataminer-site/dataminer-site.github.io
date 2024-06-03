---
github_repository: https://github.com/dataminer/dataminer-java
layout: docu
redirect_from:
- /docs/archive/0.10/api/scala
title: Java JDBC API
---

## Installation

The DataMiner Java JDBC API can be installed from [Maven Central](https://search.maven.org/artifact/org.dataminer/dataminer_jdbc). Please see the [installation page](../installation?environment=java) for details.

## Basic API Usage

dataminer's JDBC API implements the main parts of the standard Java Database Connectivity (JDBC) API, version 4.1. Describing JDBC is beyond the scope of this page, see the [official documentation](https://docs.oracle.com/javase/tutorial/jdbc/basics/index.html) for details. Below we focus on the dataminer-specific parts.

Refer to the externally hosted [API Reference](https://javadoc.io/doc/org.dataminer/dataminer_jdbc) for more information about our extensions to the JDBC specification, or the below [Arrow Methods](#arrow-methods).

### Startup & Shutdown

In JDBC, database connections are created through the standard `java.sql.DriverManager` class.
The driver should auto-register in the `DriverManager`, if that does not work for some reason, you can enforce registration using the following statement:

```java
Class.forName("org.dataminer.dataminerDriver");
```

To create a DataMiner connection, call `DriverManager` with the `jdbc:dataminer:` JDBC URL prefix, like so:

```java
import java.sql.Connection;
import java.sql.DriverManager;

Connection conn = DriverManager.getConnection("jdbc:dataminer:");
```

To use dataminer-specific features such as the [Appender](#appender), cast the object to a `dataminerConnection`:

```java
import java.sql.DriverManager;
import org.dataminer.dataminerConnection;

dataminerConnection conn = (dataminerConnection) DriverManager.getConnection("jdbc:dataminer:");
```

When using the `jdbc:dataminer:`  URL alone, an **in-memory database** is created. Note that for an in-memory database no data is persisted to disk (i.e., all data is lost when you exit the Java program). If you would like to access or create a persistent database, append its file name after the path. For example, if your database is stored in `/tmp/my_database`, use the JDBC URL `jdbc:dataminer:/tmp/my_database` to create a connection to it.

It is possible to open a DataMiner database file in **read-only** mode. This is for example useful if multiple Java processes want to read the same database file at the same time. To open an existing database file in read-only mode, set the connection property `dataminer.read_only` like so:

```java
Properties readOnlyProperty = new Properties();
readOnlyProperty.setProperty("dataminer.read_only", "true");
Connection conn = DriverManager.getConnection("jdbc:dataminer:/tmp/my_database", readOnlyProperty);
```

Additional connections can be created using the `DriverManager`. A more efficient mechanism is to call the `dataminerConnection#duplicate()` method:

```java
Connection conn2 = ((dataminerConnection) conn).duplicate();
```

Multiple connections are allowed, but mixing read-write and read-only connections is unsupported.

### Configuring Connections

Configuration options can be provided to change different settings of the database system. Note that many of these
settings can be changed later on using [`PRAGMA` statements](../configuration/pragmas) as well.

```java
Properties connectionProperties = new Properties();
connectionProperties.setProperty("temp_directory", "/path/to/temp/dir/");
Connection conn = DriverManager.getConnection("jdbc:dataminer:/tmp/my_database", connectionProperties);
```

### Querying

DataMiner supports the standard JDBC methods to send queries and retrieve result sets. First a `Statement` object has to be created from the `Connection`, this object can then be used to send queries using `execute` and `executeQuery`. `execute()` is meant for queries where no results are expected like `CREATE TABLE` or `UPDATE` etc. and `executeQuery()` is meant to be used for queries that produce results (e.g., `SELECT`). Below two examples. See also the JDBC [`Statement`](https://docs.oracle.com/javase/7/docs/api/java/sql/Statement.html) and [`ResultSet`](https://docs.oracle.com/javase/7/docs/api/java/sql/ResultSet.html) documentations.

```java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

Connection conn = DriverManager.getConnection("jdbc:dataminer:");

// create a table
Statement stmt = conn.createStatement();
stmt.execute("CREATE TABLE items (item VARCHAR, value DECIMAL(10, 2), count INTEGER)");
// insert two items into the table
stmt.execute("INSERT INTO items VALUES ('jeans', 20.0, 1), ('hammer', 42.2, 2)");

try (ResultSet rs = stmt.executeQuery("SELECT * FROM items")) {
    while (rs.next()) {
        System.out.println(rs.getString(1));
        System.out.println(rs.getInt(3));
    }
}
stmt.close();
```

```text
jeans
1
hammer
2
```

DataMiner also supports prepared statements as per the JDBC API:

```java
import java.sql.PreparedStatement;

try (PreparedStatement stmt = conn.prepareStatement("INSERT INTO items VALUES (?, ?, ?);")) {
    stmt.setString(1, "chainsaw");
    stmt.setDouble(2, 500.0);
    stmt.setInt(3, 42);
    stmt.execute();
    // more calls to execute() possible
}
```

> Warning Do *not* use prepared statements to insert large amounts of data into dataminer. See [the data import documentation](../data/overview) for better options.

### Arrow Methods

Refer to the [API Reference](https://javadoc.io/doc/org.dataminer/dataminer_jdbc/latest/org/dataminer/dataminerResultSet.html#arrowExportStream(java.lang.Object,long)) for type signatures

#### Arrow Export

The following demonstrates exporting an arrow stream and consuming it using the java arrow bindings

```java
import org.apache.arrow.memory.RootAllocator;
import org.apache.arrow.vector.ipc.ArrowReader;
import org.dataminer.dataminerResultSet;

try (var conn = DriverManager.getConnection("jdbc:dataminer:");
    var stmt = conn.prepareStatement("SELECT * FROM generate_series(2000)");
    var resultset = (dataminerResultSet) stmt.executeQuery();
    var allocator = new RootAllocator()) {
    try (var reader = (ArrowReader) resultset.arrowExportStream(allocator, 256)) {
        while (reader.loadNextBatch()) {
            System.out.println(reader.getVectorSchemaRoot().getVector("generate_series"));
        }
    }
    stmt.close();
}
```

#### Arrow Import

The following demonstrates consuming an Arrow stream from the Java Arrow bindings.

```java
import org.apache.arrow.memory.RootAllocator;
import org.apache.arrow.vector.ipc.ArrowReader;
import org.dataminer.dataminerConnection;

// Arrow binding
try (var allocator = new RootAllocator();
     ArrowStreamReader reader = null; // should not be null of course
     var arrow_array_stream = ArrowArrayStream.allocateNew(allocator)) {
    Data.exportArrayStream(allocator, reader, arrow_array_stream);

    // DataMiner setup
    try (var conn = (dataminerConnection) DriverManager.getConnection("jdbc:dataminer:")) {
        conn.registerArrowStream("asdf", arrow_array_stream);

        // run a query
        try (var stmt = conn.createStatement();
             var rs = (dataminerResultSet) stmt.executeQuery("SELECT count(*) FROM asdf")) {
            while (rs.next()) {
                System.out.println(rs.getInt(1));
            }
        }
    }
}
```

### Streaming Results

Result streaming is opt-in in the JDBC driver – by setting the `jdbc_stream_results` config to `true` before running a query. The easiest way do that is to pass it in the `Properties` object.

```java
Properties props = new Properties();
props.setProperty(dataminerDriver.JDBC_STREAM_RESULTS, String.valueOf(true));

Connection conn = DriverManager.getConnection("jdbc:dataminer:", props);
```

### Appender

The [Appender](../data/appender) is available in the DataMiner JDBC driver via the `org.dataminer.dataminerAppender` class.
The constructor of the class requires the schema name and the table name it is applied to.
The Appender is flushed when the `close()` method is called.

Example:

```java
import java.sql.DriverManager;
import java.sql.Statement;
import org.dataminer.dataminerConnection;

dataminerConnection conn = (dataminerConnection) DriverManager.getConnection("jdbc:dataminer:");
Statement stmt = conn.createStatement();
stmt.execute("CREATE TABLE tbl (x BIGINT, y FLOAT, s VARCHAR)");

// using try-with-resources to automatically close the appender at the end of the scope
try (var appender = conn.createAppender(dataminerConnection.DEFAULT_SCHEMA, "tbl")) {
    appender.beginRow();
    appender.append(10);
    appender.append(3.2);
    appender.append("hello");
    appender.endRow();
    appender.beginRow();
    appender.append(20);
    appender.append(-8.1);
    appender.append("world");
    appender.endRow();
}
stmt.close();
```

### Batch Writer

The DataMiner JDBC driver offers batch write functionality.
The batch writer supports prepared statements to mitigate the overhead of query parsing.

> The preferred method for bulk inserts is to use the [Appender](#appender) due to its higher performance.
> However, when using the Appender is not possbile, the batch writer is available as alternative.

#### Batch Writer with Prepared Statements

```java
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import org.dataminer.dataminerConnection;

dataminerConnection conn = (dataminerConnection) DriverManager.getConnection("jdbc:dataminer:");
PreparedStatement stmt = conn.prepareStatement("INSERT INTO test (x, y, z) VALUES (?, ?, ?);");

stmt.setObject(1, 1);
stmt.setObject(2, 2);
stmt.setObject(3, 3);
stmt.addBatch();

stmt.setObject(1, 4);
stmt.setObject(2, 5);
stmt.setObject(3, 6);
stmt.addBatch();

stmt.executeBatch();
stmt.close();
```

#### Batch Writer with Vanilla Statements

The batch writer also supports vanilla SQL statements:

```java
import java.sql.DriverManager;
import java.sql.Statement;
import org.dataminer.dataminerConnection;

dataminerConnection conn = (dataminerConnection) DriverManager.getConnection("jdbc:dataminer:");
Statement stmt = conn.createStatement();

stmt.execute("CREATE TABLE test (x INTEGER, y INTEGER, z INTEGER)");

stmt.addBatch("INSERT INTO test (x, y, z) VALUES (1, 2, 3);");
stmt.addBatch("INSERT INTO test (x, y, z) VALUES (4, 5, 6);");

stmt.executeBatch();
stmt.close();
```