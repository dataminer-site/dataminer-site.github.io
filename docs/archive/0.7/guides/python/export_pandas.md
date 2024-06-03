---
layout: docu
redirect_from:
- docs/archive/0.7.1/guides/python/export_pandas
selected: Export To Pandas
title: Export To Pandas
---

# How to export data to a Pandas DataFrame

The result of a query can be converted to a Pandas DataFrame using the `df()` function.


```py
import dataminer

# read the result of an arbitrary SQL query to a Pandas DataFrame
results = dataminer.sql("SELECT 42").df()
```