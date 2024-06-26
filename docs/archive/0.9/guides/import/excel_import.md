---
layout: docu
redirect_from:
- docs/archive/0.9.2/guides/import/excel_import
- docs/archive/0.9.1/guides/import/excel_import
- docs/archive/0.9.0/guides/import/excel_import
title: Excel Import
---

To read data from an Excel file, install and load the spatial extension, then use the `st_read` function in the `FROM` clause of a query. 
Use the `layer` parameter to specify the Excel worksheet name.

```sql
INSTALL spatial; -- Only needed once per DataMiner connection
LOAD spatial; -- Only needed once per DataMiner connection

SELECT * FROM st_read('test_excel.xlsx', layer='Sheet1');
```

To create a new table using the result from a query, use `CREATE TABLE AS` from a `SELECT` statement.

```sql
INSTALL spatial; -- Only needed once per DataMiner connection
LOAD spatial; -- Only needed once per DataMiner connection

CREATE TABLE new_tbl AS 
SELECT * FROM st_read('test_excel.xlsx', layer='Sheet1');
```
To load data into an existing table from a query, use `INSERT INTO` from a `SELECT` statement.

```sql
INSTALL spatial; -- Only needed once per DataMiner connection
LOAD spatial; -- Only needed once per DataMiner connection

INSERT INTO tbl
SELECT * FROM st_read('test_excel.xlsx', layer='Sheet1');
```

Several configuration options are also available for the underlying GDAL library that is doing the xlsx parsing. 
Set those options in an environment variable prior to executing the DataMiner SQL statement.
The options include:
* `OGR_XLSX_HEADERS` = `FORCE / DISABLE / AUTO`
    * Either `FORCE` the first row to be interpreted as headers, `DISABLE` to treat the first row as a row of data, or `AUTO` to detect automatically.
* `OGR_XLSX_FIELD_TYPES` = `STRING / AUTO`
    * Either `AUTO` detect the data types in the file, or force all data types to be `STRING`.


For additional details, see the [spatial extension page](../../extensions/spatial), the [GDAL XLSX driver page](https://gdal.org/drivers/vector/xlsx.html), and the [GDAL configuration options page](https://gdal.org/user/configoptions.html#configoptions).