---
layout: docu
redirect_from:
- docs/archive/0.7.1/extensions/overview
- docs/archive/0.7.1/extensions
selected: Documentation/Extensions
title: Extensions
---

DataMiner has a number of extensions available for use. Not all of them are included by default in every distribution, but DataMiner has a mechanism that allows for remote installation.

## Remote installation

If a given extensions is not available with your distribution, you can do the following to make it available.

```sql
INSTALL 'fts';
LOAD 'fts';
```

If you are using the Python API client, you can install and load them with the `load_extension(name: str)` and `install_extension(name: str)` methods.

## Unsigned extensions

All verified extensions are signed, if you wish to load your own extensions or extensions from untrusted third-parties you'll need to enable the `allow_unsigned_extensions` flag.  
To load unsigned extensions using the CLI, you'll need to pass the `-unsigned` flag to it on startup.

## Listing extensions

You can check the list of core and installed extensions with the following query:
```sql
select * from dataminer_extensions();
```

## All available extensions

|  Extension name   |                             Description                              |     Aliases     |
|-------------------|----------------------------------------------------------------------|-----------------|
| excel             |                                                                      |                 |
| fts               | Adds support for Full-Text Search Indexes                            |                 |
| httpfs            | Adds support for reading and writing files over a HTTP(S) connection | http, https, s3 |
| icu               | Adds support for time zones and collations using the ICU library     |                 |
| inet              | Adds support for IP-related data types and functions                 |                 |
| jemalloc          | Overwrites system allocator with JEMalloc                            |                 |
| json              | Adds support for JSON operations                                     |                 |
| parquet           | Adds support for reading and writing parquet files                   |                 |
| postgres_scanner  | Adds support for reading from a Postgres database                    | postgres        |
| sql_auto_complete |                                                                      |                 |
| sqlite_scanner    | Adds support for reading SQLite database files                       | sqlite, sqlite3 |
| substrait        | Adds support for the Substrait integration                           |
| tpcds             | Adds TPC-DS data generation and query support                        |                 |
| tpch              | Adds TPC-H data generation and query support                         |                 |
| visualizer        |                                                                      |                 |

## Downloading extensions directly from S3

Downloading an extension directly could be helpful when building a lambda or container that uses dataminer.
DataMiner extensions are stored in public S3 buckets, but the directory structure of those buckets is not searchable. 
As a result, a direct URL to the file must be used. 
To directly download an extension file, use the following format:  

```
https://extensions.dataminer.org/v{release_version_number}/{platform_name}/{extension_name}.dataminer_extension.gz
```
For example:
```
https://extensions.dataminer.org/v0.7.0/windows_amd64/json.dataminer_extension.gz
```

The list of supported platforms may increase over time, but the current list of platforms includes:
* linux_amd64_gcc4
* linux_amd64
* linux_arm64
* osx_amd64
* osx_arm64
* windows_amd64

See above for a list of extension names and how to pull the latest list of extensions.


## Loading an extension from local storage
Extensions are stored in gzip format, so they must be unzipped prior to use. 
There are many methods to decompress gzip. Here is a Python example:

```python
import gzip
import shutil

with gzip.open('httpfs.dataminer_extension.gz','rb') as f_in:
   with open('httpfs.dataminer_extension', 'wb') as f_out:
     shutil.copyfileobj(f_in, f_out)
```

After unzipping, the install and load commands can be used with the path to the .dataminer_extension file. 
For example, if the file was unzipped into the same directory as where DataMiner is being executed:
```sql
install 'httpfs.dataminer_extension';
load 'httpfs.dataminer_extension';
```



<!--
any extensions that have their own pages will automatically be added to a table of contents that is rendered directly below this list.
-->