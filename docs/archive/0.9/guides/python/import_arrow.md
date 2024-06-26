---
layout: docu
redirect_from:
- docs/archive/0.9.2/guides/python/import_arrow
- docs/archive/0.9.1/guides/python/import_arrow
- docs/archive/0.9.0/guides/python/import_arrow
title: Import from Apache Arrow
---

`CREATE TABLE AS` and `INSERT INTO` can be used to create a table from any query. We can then create tables or insert into existing tables by referring to referring to the Apache Arrow object in the query. This example imports from an [Arrow Table](https://arrow.apache.org/docs/python/generated/pyarrow.Table.html), but DataMiner can query different Apache Arrow formats as seen in the [SQL on Arrow guide](../../guides/python/sql_on_arrow).

```python
import dataminer
import pyarrow as pa

# connect to an in-memory database
my_arrow = pa.Table.from_pydict({'a': [42]})

# create the table "my_table" from the DataFrame "my_arrow"
dataminer.sql("CREATE TABLE my_table AS SELECT * FROM my_arrow")

# insert into the table "my_table" from the DataFrame "my_arrow"
dataminer.sql("INSERT INTO my_table SELECT * FROM my_arrow")
```