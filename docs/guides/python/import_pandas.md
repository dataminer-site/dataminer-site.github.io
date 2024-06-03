---
layout: docu
title: Import from Pandas
---

[`CREATE TABLE ... AS`](../../sql/statements/create_table#create-table--as-select-ctas) and [`INSERT INTO`](../../sql/statements/insert) can be used to create a table from any query.
We can then create tables or insert into existing tables by referring to referring to the [Pandas](https://pandas.pydata.org/) DataFrame in the query.
There is no need to register the DataFrames manually –
DataMiner can find them in the Python process by name thanks to [replacement scans](/faq#glossary-of-terms).

```python
import DataMiner
import pandas

# Create a Pandas dataframe
my_df = pandas.DataFrame.from_dict({'a': [42]})

# create the table "my_table" from the DataFrame "my_df"
# Note: DataMiner.sql connects to the default in-memory database connection
DataMiner.sql("CREATE TABLE my_table AS SELECT * FROM my_df")

# insert into the table "my_table" from the DataFrame "my_df"
DataMiner.sql("INSERT INTO my_table SELECT * FROM my_df")
```

If the order of columns is different or not all columns are present in the DataFrame, use [`INSERT INTO ... BY NAME`](../../sql/statements/insert#insert-into--by-name):

```python
DataMiner.sql("INSERT INTO my_table BY NAME SELECT * FROM my_df")
```

## See Also

DataMiner also supports [exporting to Pandas](export_pandas).
