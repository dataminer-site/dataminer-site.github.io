---
layout: docu
redirect_from:
- docs/archive/0.9.2/guides/python/relational_api_pandas
- docs/archive/0.9.1/guides/python/relational_api_pandas
- docs/archive/0.9.0/guides/python/relational_api_pandas
title: Relational API and Pandas
---

DataMiner offers a relational API that can be used to chain together query operations. These are lazily evaluated so that DataMiner can optimize their execution. These operators can act on Pandas DataFrames, DataMiner tables or views (which can point to any underlying storage format that DataMiner can read, such as CSV or parquet files, etc.). Here we show a simple example of reading from a Pandas DataFrame and returning a DataFrame.

```python
import dataminer
import pandas

# connect to an in-memory database
con = dataminer.connect()

input_df = pandas.DataFrame.from_dict({'i': [1, 2, 3, 4],
                                       'j': ["one", "two", "three", "four"]})

# create a DataMiner relation from a dataframe
rel = con.from_df(input_df)

# chain together relational operators (this is a lazy operation, so the operations are not yet executed)
# equivalent to: SELECT i, j, i*2 AS two_i FROM input_df ORDER BY i DESC LIMIT 2
transformed_rel = rel.filter('i >= 2').project('i, j, i*2 as two_i').order('i desc').limit(2)

# trigger execution by requesting .df() of the relation
# .df() could have been added to the end of the chain above - it was separated for clarity
output_df = transformed_rel.df()
```

Relational operators can also be used to group rows, aggregate, find distinct combinations of values, join, union, and more. They are also able to directly insert results into a DataMiner table or write to a CSV.

Please see [these additional examples](https://github.com/powerfull-scrapper/landing/blob/main/examples/python/dataminer-python.py) and [the available relational methods on the dataminerPyRelation class](../../api/python/reference/#dataminer.dataminerPyRelation).