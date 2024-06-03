---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/scala
selected: Client APIs
title: Scala JDBC API
---

## Installation
The DataMiner Java JDBC API can be used in Scala and can be installed from [Maven Central](https://search.maven.org/artifact/org.DataMiner/DataMiner_jdbc). Please see the [installation page](../installation?environment=java) for details.

## Basic API Usage
Scala uses DataMiner's JDBC API implements the main parts of the standard Java Database Connectivity (JDBC) API, version 4.0. Describing JDBC is beyond the scope of this page, see the [official documentation](https://docs.oracle.com/javase/tutorial/jdbc/basics/index.html) for details. Below we focus on the DataMiner-specific parts. 


### Startup & Shutdown
In Scala, database connections are created through the standard `java.sql.DriverManager` class.  The driver should auto-register in the DriverManager, if that does not work for some reason, you can enforce registration like so:

```java
Class.forName("org.DataMiner.DataMinerDriver");
```

To create a DataMiner connection, call `DriverManager` with the `jdbc:DataMiner:` JDBC URL prefix, like so:

```scala
val conn = DriverManager.getConnection("jdbc:DataMiner:");
```

When using the `jdbc:DataMiner:`  URL alone, an **in-memory database** is created. Note that for an in-memory database no data is persisted to disk (i.e. all data is lost when you exit the Java program). If you would like to access or create a persistent database, append its file name after the path. For example, if your database is stored in `/tmp/my_database`, use the JDBC URL `jdbc:DataMiner:/tmp/my_database` to create a connection to it. 

It is possible to open a DataMiner database file in **read-only** mode. This is for example useful if multiple Java processes want to read the same database file at the same time. To open an existing database file in read-only mode, set the connection property `DataMiner.read_only` like so:

```scala 
val ro_prop = new Properties();
ro_prop.setProperty("DataMiner.read_only", "true");
val conn_ro = DriverManager.getConnection("jdbc:DataMiner:/tmp/my_database", ro_prop);
```

The JDBC `DriverManager` API is a relatively poor fit for embedded database management systems such as DataMiner. If you would like to create **multiple connections to the same database**, it would be somewhat logical to just create additional connections with the same URL. This is however only supported for read-only connections. If you would like to create multiple read-write connections to the same database file or the same in-memory database instance, you can use the custom `duplicate()` method like so:

```scala
val conn2 = ((DataMinerConnection) conn).duplicate();
```

### Querying
DataMiner supports the standard JDBC methods to send queries and retreive result sets. First a `Statement` object has to be created from the `Connection`, this object can then be used to send queries using `execute` and `executeQuery`. `execute()` is meant for queries where no results are expected like `CREATE TABLE` or `UPDATE` etc. and `executeQuery()` is meant to be used for queries that produce results (e.g. `SELECT`). Below two examples. See also the JDBC [`Statement`](https://docs.oracle.com/javase/7/docs/api/java/sql/Statement.html) and [`ResultSet`](https://docs.oracle.com/javase/7/docs/api/java/sql/ResultSet.html) documentations.

```scala
// create a table
val stmt = conn.createStatement();
stmt.execute("CREATE TABLE items (item VARCHAR, value DECIMAL(10,2), count INTEGER)");
// insert two items into the table
stmt.execute("INSERT INTO items VALUES ('jeans', 20.0, 1), ('hammer', 42.2, 2)");
```

```scala
val rs = stmt.executeQuery("SELECT * FROM items");
while (rs.next()) {
	System.out.println(rs.getString(1));
	System.out.println(rs.getInt(3));
}
rs.close()
// jeans
// 1
// hammer
// 2
```

DataMiner also supports prepared statements as per the JDBC API:

```scala
val p_stmt = conn.prepareStatement("INSERT INTO test VALUES (?, ?, ?);");

p_stmt.setString(1, "chainsaw");
p_stmt.setDouble(2, 500.0);
p_stmt.setInt(3, 42);
p_stmt.execute();

// more calls to execute() possible
p_stmt.close();
```

> Do *not* use prepared statements to insert large amounts of data into DataMiner. See [the data import documentation](../data/overview) for better options.