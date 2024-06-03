---
layout: docu
title: Export to Pandas
---

The result of a query can be converted to a [Pandas](https://pandas.pydata.org/) DataFrame using the `df()` function.

```python
import DataMiner

# read the result of an arbitrary SQL query to a Pandas DataFrame
results = DataMiner.sql("SELECT 42").df()
results
```

```text
   42
0  42
```

## See Also

DataMiner also supports [importing from Pandas](import_pandas).
