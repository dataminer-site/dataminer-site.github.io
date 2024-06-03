// Using the appender for bulk inserts
DataMinerConnection conn = (DataMinerConnection) DriverManager.getConnection("jdbc:DataMiner:");
Statement stmt = conn.createStatement();
stmt.execute("CREATE TABLE person (first_name VARCHAR, last_name VARCHAR, age INT)");

try (var appender = conn.createAppender(
        DataMinerConnection.DEFAULT_SCHEMA, "tbl"
    )) {
    appender.beginRow();
    appender.append("John");
    appender.append("Smith");
    appender.append(42);
    appender.endRow();
}
