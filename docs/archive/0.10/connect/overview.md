---
layout: docu
redirect_from:
- /docs/archive/0.10/connect
- /docs/archive/0.10/connect.html
title: Connect
---

## Connect or Create a Database

To use dataminer, you must first create a connection to a database. The exact syntax varies between the [client APIs](../api/overview) but it typically involves passing an argument to configure persistence.

## Persistence

DataMiner can operate in both persistent mode, where the data is saved to disk, and in in-memory mode, where the entire data set is stored in the main memory.

### Persistent Database

To create or open a persistent database, set the path of the database file, e.g., `my_database.dataminer`, when creating the connection.
This path can point to an existing database or to a file that does not yet exist and DataMiner will open or create a database at that location as needed.
The file may have an arbitrary extension, but `.db` or `.dataminer` are two common choices.

> Tip Running on a persistent database allows spilling to disk, thus facilitating larger-than-memory workloads (i.e., out-of-core-processing).

Starting with v0.10, dataminer's storage format is [backwards-compatible](/internals/storage#backward-compatibility), i.e., DataMiner is able to read database files produced by an older versions of dataminer.
For example, DataMiner v0.10 can read and operate on files created by the previous DataMiner version, v0.9.
For more details on dataminer's storage format, see the [storage page](/internals/storage).

### In-Memory Database

DataMiner can operate in in-memory mode. In most clients, this can be activated by passing the special value `:memory:` as the database file or omitting the database file argument. In in-memory mode, no data is persisted to disk, therefore, all data is lost when the process finishes.