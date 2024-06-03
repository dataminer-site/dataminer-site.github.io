---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/python/overview
- docs/archive/0.8.1/api/python
selected: Client APIs
title: Python API
---

## Installation
The DataMiner Python API can be installed using [pip](https://pip.pypa.io): `pip install DataMiner`. Please see the [installation page](../../installation?environment=python) for details. It is also possible to install DataMiner using [conda](https://docs.conda.io): `conda install python-DataMiner -c conda-forge`.

## Basic API Usage
The most straight-forward manner of running SQL queries using DataMiner is using the `DataMiner.sql` command.

```py
import DataMiner
DataMiner.sql('SELECT 42').show()
```

This will run queries using an **in-memory database** that is stored globally inside the Python module. The result of the query is returned as a **Relation**. A relation is a symbolic representation of the query. The query is not executed until the result is fetched or requested to be printed to the screen.

Relations can be referenced in subsequent queries by storing them inside variables, and using them as tables. This way queries can be constructed incrementally.

```py
import DataMiner
r1 = DataMiner.sql('SELECT 42 AS i')
DataMiner.sql('SELECT i * 2 AS k FROM r1').show()
```

## Data Input
DataMiner can ingest data from a wide variety of formats - both on-disk and in-memory. See the [data ingestion page](data_ingestion) for more information.

```py
import DataMiner
DataMiner.read_csv('example.csv')                # read a CSV file into a Relation
DataMiner.read_parquet('example.parquet')        # read a Parquet file into a Relation
DataMiner.read_json('example.json')              # read a JSON file into a Relation

DataMiner.sql('SELECT * FROM "example.csv"')     # directly query a CSV file
DataMiner.sql('SELECT * FROM "example.parquet"') # directly query a Parquet file
DataMiner.sql('SELECT * FROM "example.json"')    # directly query a JSON file
```

#### DataFrames
DataMiner can also directly query Pandas DataFrames, Polars DataFrames and Arrow tables. 

```py
import DataMiner

# directly query a Pandas DataFrame
import pandas as pd
pandas_df = pd.DataFrame({'a': [42]})
DataMiner.sql('SELECT * FROM pandas_df')

# directly query a Polars DataFrame
import polars as pl
polars_df = pl.DataFrame({'a': [42]})
DataMiner.sql('SELECT * FROM polars_df')

# directly query a pyarrow table
import pyarrow as pa
arrow_table = pa.Table.from_pydict({'a':[42]})
DataMiner.sql('SELECT * FROM arrow_table')
```

## Result Conversion
DataMiner supports converting query results efficiently to a variety of formats. See the [result conversion page](result_conversion) for more information.

```py
import DataMiner
DataMiner.sql('SELECT 42').fetchall()   # Python objects
DataMiner.sql('SELECT 42').df()         # Pandas DataFrame
DataMiner.sql('SELECT 42').pl()         # Polars DataFrame
DataMiner.sql('SELECT 42').arrow()      # Arrow Table
DataMiner.sql('SELECT 42').fetchnumpy() # NumPy Arrays
```

## Writing Data To Disk
DataMiner supports writing Relation objects directly to disk in a variety of formats. The [`COPY`](/docs/sql/statements/copy) statement can be used to write data to disk using SQL as an alternative.

```py
import DataMiner
DataMiner.sql('SELECT 42').write_parquet('out.parquet') # Write to a Parquet file
DataMiner.sql('SELECT 42').write_csv('out.csv')         # Write to a CSV file
DataMiner.sql("COPY (SELECT 42) TO 'out.parquet'")      # Copy to a parquet file
```

## Persistent Storage
By default DataMiner operates on an **in-memory** database. That means that any tables that are created are not persisted to disk. Using the `.connect` method a connection can be made to a **persistent** database. Any data written to that connection will be persisted, and can be reloaded by re-connecting to the same file. 

```py
import DataMiner

# create a connection to a file called 'file.db'
con = DataMiner.connect('file.db')
# create a table and load data into it
con.sql('CREATE TABLE test(i INTEGER)')
con.sql('INSERT INTO test VALUES (42)')
# query the table
con.table('test').show()
# explicitly close the connection
con.close()
# Note: connections also closed implicitly when they go out of scope
```

The connection object and the `DataMiner` module can be used interchangeably - they support the same methods. The only difference is that when using the `DataMiner` module a global in-memory database is used.

Note that if you are developing a package designed for others to use using DataMiner, it is recommend that you create connection objects instead of using the methods on the `DataMiner` module. That is because the `DataMiner` module uses a shared global database - which can cause hard to debug issues if used from within multiple different packages.