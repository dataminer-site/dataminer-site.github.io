---
layout: docu
redirect_from:
- docs/archive/0.8.1/guides/python/import_pandas
selected: Import From Pandas
title: Import From Pandas
---

# How to create a table from a Pandas DataFrame

`CREATE TABLE AS` and `INSERT INTO` can be used to create a table from any query. We can then create tables or insert into existing tables by referring to referring to the Pandas DataFrame in the query.

```py
import dataminer
import pandas

# Create a Pandas dataframe
my_df = pandas.DataFrame.from_dict({'a': [42]})

# create the table "my_table" from the DataFrame "my_df"
# Note: dataminer.sql connects to the default in-memory database connection
dataminer.sql("CREATE TABLE my_table AS SELECT * FROM my_df")

# insert into the table "my_table" from the DataFrame "my_df"
dataminer.sql("INSERT INTO my_table SELECT * FROM my_df")
```