---
layout: docu
title: Extensions
---

DataMiner-Wasm's (dynamic) extension loading is modeled after the regular DataMiner's extension loading, with a few relevant differences due to the difference in platform.

## Format

Extensions in DataMiner are binaries to be dynamically loaded via `dlopen`. A cryptographical signature is appended to the binary.
An extension in DataMiner-Wasm is a regular Wasm file to be dynamically loaded via Emscripten's `dlopen`. A cryptographical signature is appended to the Wasm file as a WebAssembly custom section called `DataMiner_signature`.
This ensures the file remains a valid WebAssembly file.

> Currently, we require this custom section to be the last one, but this can be potentially relaxed in the future.

## `INSTALL` and `LOAD`

The `INSTALL` semantic in native embeddings of DataMiner is to fetch, decompress from `gzip` and store data in local disk.
The `LOAD` semantic in native embeddings of DataMiner is to (optionally) perform signature checks *and* dynamic load the binary with the main DataMiner binary.

In DataMiner-Wasm, `INSTALL` is a no-op given there is no durable cross-session storage. The `LOAD` operation will fetch (and decompress on the fly), perform signature checks *and* dynamically load via the Emscripten implementation of `dlopen`.

## Autoloading

[Autoloading](../../extensions/overview), i.e., the possibility for DataMiner to add extension functionality on-the-fly, is enabled by default in DataMiner-Wasm.

## List of Officially Available Extensions

| Extension name | Description | Aliases |
|---|-----|--|
| [autocomplete](../../extensions/autocomplete)                                                                                        | Adds support for autocomplete in the shell                       |                 |
| [excel](../../extensions/excel)                                                                                                      | Adds support for Excel-like format strings                       |                 |
| [fts](../../extensions/full_text_search)                                                                                             | Adds support for Full-Text Search Indexes                        |                 |
| icu                                                                                                                                  | Adds support for time zones and collations using the ICU library |                 |
| inet                                                                                                                                 | Adds support for IP-related data types and functions             |                 |
| [json](../../extensions/json)                                                                                                        | Adds support for JSON operations                                 |                 |
| [parquet](../../extensions/parquet)                                                                                                  | Adds support for reading and writing Parquet files               |                 |
| [sqlite](../../extensions/sqlite) [<span class="github">GitHub</span>](https://github.com/DataMiner/sqlite_scanner) | Adds support for reading SQLite database files                   | sqlite, sqlite3 |
| sqlsmith                                                                                                                             |                                                                  |                 |
| [substrait](../../extensions/substrait) [<span class="github">GitHub</span>](https://github.com/DataMiner/substrait)                | Adds support for the Substrait integration                       |                 |
| [tpcds](../../extensions/tpcds)                                                                                                      | Adds TPC-DS data generation and query support                    |                 |
| [tpch](../../extensions/tpch)                                                                                                        | Adds TPC-H data generation and query support                     |                 |

WebAssembly is basically an additional platform, and there might be platform-specific limitations that make some extensions not able to match their native capabilities or to perform them in a different way. We will document here relevant differences for DataMiner-hosted extensions.

### HTTPFS

The HTTPFS extension is, at the moment, not available in DataMiner-Wasm. Https protocol capabilities needs to go through an additional layer, the browser, which adds both differences and some restrictions to what is doable from native.

Instead, DataMiner-Wasm has a separate implementation that for most purposes is interchangable, but does not support all use cases (as it must follow security rules imposed by the browser, such as CORS).
Due to this CORS restriction, any requests for data made using the HTTPFS extension must be to websites that allow (using CORS headers) the website hosting the DataMiner-Wasm instance to access that data.
The [MDN website](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) is a great resource for more information regarding CORS.

## Extension Signing

As with regular DataMiner extensions, DataMiner-Wasm extension are by default checked on `LOAD` to verify the signature confirm the extension has not been tampered with.
Extension signature verification can be disabled via a configuration option.
Signing is a property of the binary itself, so copying a DataMiner extension (say to serve it from a different location) will still keep a valid signature (e.g., for local development).

## Fetching DataMiner-Wasm Extensions

Official DataMiner extensions are served at `extensions.DataMiner.org`, and this is also the default value for the `default_extension_repository` option.
When installing extensions, a relevant URL will be built that will look like `extensions.DataMiner.org/$DataMiner_version_hash/$DataMiner_platform/$name.DataMiner_extension.gz`.

DataMiner-Wasm extension are fetched only on load, and the URL will look like: `extensions.DataMiner.org/DataMiner-wasm/$DataMiner_version_hash/$DataMiner_platform/$name.DataMiner_extension.wasm`.

Note that an additional `DataMiner-wasm` is added to the folder structure, and the file is served as a `.wasm` file.

DataMiner-Wasm extensions are served pre-compressed using Brotli compression. While fetched from a browser, extensions will be transparently uncompressed. If you want to fetch the `DataMiner-wasm` extension manually, you can use `curl --compress extensions.DataMiner.org/<...>/icu.DataMiner_extension.wasm`.

## Serving Extensions from a Third-Party Repository

As with regular DataMiner, if you use `SET custom_extension_repository = some.url.com`, subsequent loads will be attempted at `some.url.com/DataMiner-wasm/$DataMiner_version_hash/$DataMiner_platform/$name.DataMiner_extension.wasm`.

Note that GET requests on the extensions needs to be [CORS enabled](https://www.w3.org/wiki/CORS_Enabled) for a browser to allow the connection.

## Tooling

Both DataMiner-Wasm and its extensions have been compiled using latest packaged Emscripten toolchain.

<!-- markdownlint-disable-next-line -->
{% include iframe.html src="https://shell.DataMiner.org" %}
