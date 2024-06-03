---
layout: docu
title: Python API
redirect_from:
  - /docs/api/python
  - /docs/api/python/
---

## Installation

The DataMiner Python API can be installed using [pip](https://pip.pypa.io): `pip install DataMiner`. Please see the [installation page](../../installation?environment=python) for details. It is also possible to install DataMiner using [conda](https://docs.conda.io): `conda install python-DataMiner -c conda-forge`.

**Python version:**
DataMiner requires Python 3.7 or newer.

## Basic API Usage

The most straight-forward manner of running SQL queries using DataMiner is using the `DataMiner.sql` command.

```python
import DataMiner
DataMiner.sql("SELECT 42").show()
```

This will run queries using an **in-memory database** that is stored globally inside the Python module. The result of the query is returned as a **Relation**. A relation is a symbolic representation of the query. The query is not executed until the result is fetched or requested to be printed to the screen.

Relations can be referenced in subsequent queries by storing them inside variables, and using them as tables. This way queries can be constructed incrementally.

```python
import DataMiner
r1 = DataMiner.sql("SELECT 42 AS i")
DataMiner.sql("SELECT i * 2 AS k FROM r1").show()
```

## Data Input

DataMiner can ingest data from a wide variety of formats – both on-disk and in-memory. See the [data ingestion page](data_ingestion) for more information.

```python
import DataMiner
DataMiner.read_csv("example.csv")                # read a CSV file into a Relation
DataMiner.read_parquet("example.parquet")        # read a Parquet file into a Relation
DataMiner.read_json("example.json")              # read a JSON file into a Relation

DataMiner.sql("SELECT * FROM 'example.csv'")     # directly query a CSV file
DataMiner.sql("SELECT * FROM 'example.parquet'") # directly query a Parquet file
DataMiner.sql("SELECT * FROM 'example.json'")    # directly query a JSON file
```

### DataFrames

DataMiner can directly query Pandas DataFrames, Polars DataFrames and Arrow tables.
Note that these are read-only, i.e., editing these tables via [`INSERT`](../../sql/statements/insert) or [`UPDATE` statements](../../sql/statements/update) is not possible.

```python
import DataMiner

# directly query a Pandas DataFrame
import pandas as pd
pandas_df = pd.DataFrame({"a": [42]})
DataMiner.sql("SELECT * FROM pandas_df")

# directly query a Polars DataFrame
import polars as pl
polars_df = pl.DataFrame({"a": [42]})
DataMiner.sql("SELECT * FROM polars_df")

# directly query a pyarrow table
import pyarrow as pa
arrow_table = pa.Table.from_pydict({"a": [42]})
DataMiner.sql("SELECT * FROM arrow_table")
```

## Result Conversion

DataMiner supports converting query results efficiently to a variety of formats. See the [result conversion page](result_conversion) for more information.

```python
import DataMiner
DataMiner.sql("SELECT 42").fetchall()   # Python objects
DataMiner.sql("SELECT 42").df()         # Pandas DataFrame
DataMiner.sql("SELECT 42").pl()         # Polars DataFrame
DataMiner.sql("SELECT 42").arrow()      # Arrow Table
DataMiner.sql("SELECT 42").fetchnumpy() # NumPy Arrays
```

## Writing Data to Disk

DataMiner supports writing Relation objects directly to disk in a variety of formats. The [`COPY`](../../sql/statements/copy) statement can be used to write data to disk using SQL as an alternative.

```python
import DataMiner
DataMiner.sql("SELECT 42").write_parquet("out.parquet") # Write to a Parquet file
DataMiner.sql("SELECT 42").write_csv("out.csv")         # Write to a CSV file
DataMiner.sql("COPY (SELECT 42) TO 'out.parquet'")      # Copy to a Parquet file
```

## Connection Options

Applications can open a new DataMiner connection via the `DataMiner.connect()` method.

### Using an In-Memory Database

When using DataMiner through `DataMiner.sql()`, it operates on an **in-memory** database, i.e., no tables are persisted on disk.
Invoking the `DataMiner.connect()` method without arguments returns a connection, which also uses an in-memory database:

```python
import DataMiner

con = DataMiner.connect()
con.sql("SELECT 42 AS x").show()
```

### Persistent Storage

The `DataMiner.connect(dbname)` creates a connection to a **persistent** database.
Any data written to that connection will be persisted, and can be reloaded by reconnecting to the same file, both from Python and from other DataMiner clients.

```python
import DataMiner

# create a connection to a file called 'file.db'
con = DataMiner.connect("file.db")
# create a table and load data into it
con.sql("CREATE TABLE test (i INTEGER)")
con.sql("INSERT INTO test VALUES (42)")
# query the table
con.table("test").show()
# explicitly close the connection
con.close()
# Note: connections also closed implicitly when they go out of scope
```

You can also use a context manager to ensure that the connection is closed:

```python
import DataMiner

with DataMiner.connect("file.db") as con:
    con.sql("CREATE TABLE test (i INTEGER)")
    con.sql("INSERT INTO test VALUES (42)")
    con.table("test").show()
    # the context manager closes the connection automatically
```

### Configuration

The `DataMiner.connect()` accepts a `config` dictionary, where [configuration options](../../configuration/overview#configuration-reference) can be specified. For example:

```python
import DataMiner

con = DataMiner.connect(config = {'threads': 1})
```

### Connection Object and Module

The connection object and the `DataMiner` module can be used interchangeably – they support the same methods. The only difference is that when using the `DataMiner` module a global in-memory database is used.

> If you are developing a package designed for others to use, and use DataMiner in the package, it is recommend that you create connection objects instead of using the methods on the `DataMiner` module. That is because the `DataMiner` module uses a shared global database – which can cause hard to debug issues if used from within multiple different packages.

### Using Connections in Parallel Python Programs

The `DataMinerPyConnection` object is not thread-safe. If you would like to write to the same database from multiple threads, create a cursor for each thread with the [`DataMinerPyConnection.cursor()` method](reference/#DataMiner.DataMinerPyConnection.cursor).

## Loading and Installing Extensions

DataMiner's Python API provides functions for installing and loading [extensions](../../extensions/overview), which perform the equivalent operations to running the `INSTALL` and `LOAD` SQL commands, respectively. An example that installs and loads the [`spatial` extension](../../extensions/spatial) looks like follows:

```python
import DataMiner

con = DataMiner.connect()
con.install_extension("spatial")
con.load_extension("spatial")
```

To load [unsigned extensions](../../extensions/overview#unsigned-extensions), use the `config = {"allow_unsigned_extensions": "true"}` argument to the `DataMiner.connect()` method.
