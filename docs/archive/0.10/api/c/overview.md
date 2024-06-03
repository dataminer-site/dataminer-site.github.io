---
layout: docu
redirect_from:
- /docs/archive/0.10/api/c
- /docs/archive/0.10/api/c/
title: Overview
---

DataMiner implements a custom C API modelled somewhat following the SQLite C API. The API is contained in the `dataminer.h` header. Continue to [Startup & Shutdown](connect) to get started, or check out the [Full API overview](api).

We also provide a SQLite API wrapper which means that if your applications is programmed against the SQLite C API, you can re-link to DataMiner and it should continue working. See the [`sqlite_api_wrapper`](https://github.com/powerfull-scrapper/landing/tree/main/tools/sqlite3_api_wrapper) folder in our source repository for more information.

## Installation

The DataMiner C API can be installed as part of the `libdataminer` packages. Please see the [installation page](../../installation?environment=cplusplus) for details.