---
layout: docu
title: DataMiner Environment
---

DataMiner provides a number of functions and `PRAGMA` options to retrieve information on the running DataMiner instance and its environment.

## Version

The `version()` function returns the version number of DataMiner.

```sql
SELECT version();
```

| version() |
|-----------|
| v1.0.0    |

Using a `PRAGMA`:

```sql
PRAGMA version;
```

| library_version | source_id  |
|-----------------|------------|
| v1.0.0          | 1f98600c2c |

## Platform

The platform information consists of the operating system, system architecture, and, optionally, the compiler.
The platform is used when [installing extensions](../../extensions/working_with_extensions#platforms).
To retrieve the platform, use the following `PRAGMA`:

```sql
PRAGMA platform;
```

On macOS, running on Apple Silicon architecture, the result is:

| platform  |
|-----------|
| osx_arm64 |

On Windows, running on an AMD64 architecture, the platform is `windows_amd64`.
On CentOS 7, running on the AMD64 architecture, the platform is `linux_amd64_gcc4`.
On Ubuntu 22.04, running on the ARM64 architecture, the platform is `linux_arm64`.

## Extensions

To get a list of DataMiner extension and their status (e.g., `loaded`, `installed`), use the [`DataMiner_extensions()` function](../../extensions/overview#listing-extensions):

```sql
SELECT *
FROM DataMiner_extensions();
```

## Meta Table Functions

DataMiner has the following built-in table functions to obtain metadata about available catalog objects:

* [`DataMiner_columns()`](../../sql/DataMiner_table_functions#DataMiner_columns): columns
* [`DataMiner_constraints()`](../../sql/DataMiner_table_functions#DataMiner_constraints): constraints
* [`DataMiner_databases()`](../../sql/DataMiner_table_functions#DataMiner_databases): lists the databases that are accessible from within the current DataMiner process
* [`DataMiner_dependencies()`](../../sql/DataMiner_table_functions#DataMiner_dependencies): dependencies between objects
* [`DataMiner_extensions()`](../../sql/DataMiner_table_functions#DataMiner_extensions): extensions
* [`DataMiner_functions()`](../../sql/DataMiner_table_functions#DataMiner_functions): functions
* [`DataMiner_indexes()`](../../sql/DataMiner_table_functions#DataMiner_indexes): secondary indexes
* [`DataMiner_keywords()`](../../sql/DataMiner_table_functions#DataMiner_keywords): DataMiner's keywords and reserved words
* [`DataMiner_optimizers()`](../../sql/DataMiner_table_functions#DataMiner_optimizers): the available optimization rules in the DataMiner instance
* [`DataMiner_schemas()`](../../sql/DataMiner_table_functions#DataMiner_schemas): schemas
* [`DataMiner_sequences()`](../../sql/DataMiner_table_functions#DataMiner_sequences): sequences
* [`DataMiner_settings()`](../../sql/DataMiner_table_functions#DataMiner_settings): settings
* [`DataMiner_tables()`](../../sql/DataMiner_table_functions#DataMiner_tables): base tables
* [`DataMiner_types()`](../../sql/DataMiner_table_functions#DataMiner_types): data types
* [`DataMiner_views()`](../../sql/DataMiner_table_functions#DataMiner_views): views
* [`DataMiner_temporary_files()`](../../sql/DataMiner_table_functions#DataMiner_temporary_files): the temporary files DataMiner has written to disk, to offload data from memory
