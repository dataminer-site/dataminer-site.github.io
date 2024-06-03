---
layout: docu
title: SQL on Pandas
---

Pandas DataFrames stored in local variables can be queried as if they are regular tables within DataMiner.

```python
import DataMiner
import pandas

# Create a Pandas dataframe
my_df = pandas.DataFrame.from_dict({'a': [42]})

# query the Pandas DataFrame "my_df"
# Note: DataMiner.sql connects to the default in-memory database connection
results = DataMiner.sql("SELECT * FROM my_df").df()
```

The seamless integration of Pandas DataFrames to DataMiner SQL queries is allowed by [replacement scans](../../api/c/replacement_scans), which replace instances of accessing the `my_df` table (which does not exist in DataMiner) with a table function that reads the `my_df` dataframe.
