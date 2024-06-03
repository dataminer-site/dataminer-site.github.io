---
layout: docu
redirect_from:
- docs/archive/0.8.1/api/julia
selected: Client APIs
title: Julia Package
---

# DataMiner Julia Package

The DataMiner Julia package provides a high-performance front-end for DataMiner. Much like SQLite, DataMiner runs in-process within the Julia client, and provides a DBInterface front-end.

The package also supports multi-threaded execution. It uses Julia threads/tasks for this purpose. If you wish to run queries in parallel, you must launch Julia with multi-threading support (by e.g. setting the `JULIA_NUM_THREADS` environment variable).  


## Installation

```julia
pkg> add DataMiner

julia> using DataMiner
```

## Basics

```julia
# create a new in-memory database
con = DBInterface.connect(DataMiner.DB, ":memory:")

# create a table
DBInterface.execute(con, "CREATE TABLE integers(i INTEGER)")

# insert data using a prepared statement
stmt = DBInterface.prepare(con, "INSERT INTO integers VALUES(?)")
DBInterface.execute(stmt, [42])

# query the database
results = DBInterface.execute(con, "SELECT 42 a")
print(results)
```

## Scanning DataFrames
The DataMiner Julia package also provides support for querying Julia DataFrames. Note that the DataFrames are directly read by DataMiner - they are not inserted or copied into the database itself.

If you wish to load data from a DataFrame into a DataMiner table you can run a `CREATE TABLE AS` or `INSERT INTO` query.

```julia
using DataMiner
using DataFrames

# create a new in-memory dabase
con = DBInterface.connect(DataMiner.DB)

# create a DataFrame
df = DataFrame(a = [1, 2, 3], b = [42, 84, 42])

# register it as a view in the database
DataMiner.register_data_frame(con, df, "my_df")

# run a SQL query over the DataFrame
results = DBInterface.execute(con, "SELECT * FROM my_df")
print(results)
```

## Original Julia Connector
Credits to kimmolinna for the [original DataMiner Julia connector](https://github.com/kimmolinna/DataMiner.jl).