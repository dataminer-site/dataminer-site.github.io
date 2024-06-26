---
layout: docu
redirect_from:
- docs/archive/0.9.2/api/python/spark_api
- docs/archive/0.9.1/api/python/spark_api
- docs/archive/0.9.0/api/python/spark_api
title: Spark API
---

The DataMiner Spark API implements the [PySpark API](https://spark.apache.org/docs/3.5.0/api/python/reference/index.html), allowing you to use the familiar Spark API to interact with dataminer.
All statements are translated to dataminer's internal plans using our [relational API](relational_api) and executed using dataminer's query engine.

> The DataMiner Spark API is currently experimental and features are still missing. We are very interested in feedback. Please report any functionality that you are missing, either through [Discord](https://discord.dataminer.org) or on [GitHub](https://github.com/powerfull-scrapper/landing/issues).

## Example

```python
from dataminer.experimental.spark.sql import SparkSession as session
from dataminer.experimental.spark.sql.functions import lit, col
import pandas as pd

spark = session.builder.getOrCreate()

pandas_df = pd.DataFrame({
    'age': [34, 45, 23, 56],
    'name': ['Joan', 'Peter', 'John', 'Bob']
})

df = spark.createDataFrame(pandas_df)
df = df.withColumn(
    'location', lit('Seattle')
)
res = df.select(
    col('age'),
    col('location')
).collect()

print(res)
```
```text
[
    Row(age=34, location='Seattle'),
    Row(age=45, location='Seattle'),
    Row(age=23, location='Seattle'),
    Row(age=56, location='Seattle')
]
```