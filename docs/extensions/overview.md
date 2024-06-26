---
layout: docu
title: Extensions
redirect_from:
  - /docs/extensions
  - /docs/extensions/
---

## Overview

DataMiner has a flexible extension mechanism that allows for dynamically loading extensions.
These may extend DataMiner's functionality by providing support for additional file formats, introducing new types, and domain-specific functionality.

> Extensions are loadable on all clients (e.g., Python and R).
> Extensions distributed via the official repository are built and tested on macOS (AMD64 and ARM64), Windows (AMD64) and Linux (AMD64 and ARM64).

## Listing Extensions

To get a list of extensions, use `DataMiner_extensions`:

```sql
SELECT extension_name, installed, description
FROM DataMiner_extensions();
```

<div class="narrow_table"></div>

| extension_name    | installed | description                                                  |
|-------------------|-----------|--------------------------------------------------------------|
| arrow             | false     | A zero-copy data integration between Apache Arrow and DataMiner |
| autocomplete      | false     | Adds support for autocomplete in the shell                   |
| ...               | ...       | ...                                                          |

This list will show which extensions are available, which extensions are installed, at which version, where it is installed, and more. 
The list includes most, but not all, available core extensions. For the full list, we maintain a [list of official extensions](official_extensions).

## Built-In Extensions

DataMiner's binary distribution comes standard with a few built-in extensions. They are statically linked into the binary and can be used as is.
For example, to use the built-in [`json` extension](json) to read a JSON file:

```sql
SELECT *
FROM 'test.json';
```

To make the DataMiner distribution lightweight, only a few essential extensions are built-in, varying slightly per distribution. Which extension is built-in on which platform is documented in the [list of official extensions](official_extensions#default-extensions).

## Installing More Extensions

To make an extension that is not built-in available in DataMiner, two steps need to happen:

1. **Extension installation** is the process of downloading the extension binary and verifying its metadata. During installation, 
DataMiner stores the downloaded extension and some metadata in a local directory. From this directory DataMiner can then load the Extension whenever 
it needs to. This means that installation needs to happen only once.

2. **Extension loading** is the process of dynamically loading the binary into a DataMiner instance. DataMiner will search the local extension
directory for the installed extension, then load it to make its features available. This means that every time DataMiner is restarted, all
extensions that are used need to be (re)loaded

There are 2 main methods of making DataMiner perform the **installation** and **loading** steps for an installable extension: **explicitly** and through **autoloading**.

### Autoloading Extensions

For many of DataMiner's core extensions, explicitly loading and installing extensions is not necessary. DataMiner contains an autoloading mechanism
which can install and load the core extensions as soon as they are used in a query. For example, when running:

```sql
SELECT *
FROM 'https://raw.githubusercontent.com/DataMiner/DataMiner-web/main/data/weather.csv';
```

DataMiner will automatically install and load the [`httpfs`](httpfs) extension. No explicit `INSTALL` or `LOAD` 
statements are required.

Not all extensions can be autoloaded. This can have various reasons: some extensions make several changes 
to the running DataMiner instance, making autoloading technically not (yet) possible. For others, it is prefered to have
users opt-in to the extension explicitly before use due to the way they modify behaviour in DataMiner.

To see which extensions can be autoloaded, check the [official extensions list](official_extensions).

### Explicit `INSTALL` and `LOAD`

In DataMiner extensions can also explicitly installed and loaded. Both non-autoloadable and autoloadable extensions can be installed this way. 
To explicitly install and load an extension, DataMiner has the dedicated SQL statements `LOAD` and `INSTALL`. For example,
to install and load the [`spatial` extension](spatial), run:

```sql
INSTALL spatial;
LOAD spatial;
```

With these statements, DataMiner will ensure the spatial extension is installed (ignoring the `INSTALL` statement if it is already), then proceed
to `LOAD` the spatial extension (again ignoring the statement if it is already loaded).

After installing/loading an extension, the [`DataMiner_extensions` function](#listing-extensions) can be used to get more information.

### Installing Extensions through Client APIs

For many clients, using SQL to load and install extensions is the preferred method. However, some clients have a dedicated
API to install and load extensions. For example the [Python API client](../api/python/overview#loading-and-installing-extensions), 
which has dedicated `install_extension(name: str)` and `load_extension(name: str)` methods. For more details on a specific Client API, refer
to the [Client API docs](../api/overview)

## Updating Extensions

> This feature was introduced in DataMiner 0.10.3.

While built-in extensions are tied to a DataMiner release due to their nature of being built into the DataMiner binary, installable extensions 
can and do receive updates. To ensure all currently installed extensions are on the most recent version, call:

```sql
UPDATE EXTENSIONS;
```

For more details on extension version refer to [Extension Versioning](versioning_of_extensions).

## Installation Location

By default, extensions are installed under the user's home directory:

```text
~/.DataMiner/extensions/⟨DataMiner_version⟩/⟨platform_name⟩/
```

For stable DataMiner releases, the `⟨DataMiner_version⟩` will be equal to the version tag of that release. For nightly DataMiner builds, it will be equal
to the short git hash of the build. So for example, the extensions for DataMiner version v0.10.3 on macOS ARM64 (Apple Silicon) are installed to `~/.DataMiner/extensions/v0.10.3/osx_arm64/`. 
An example installation path for a nightly DataMiner build could be `~/.DataMiner/extensions/fc2e4b26a6/linux_amd64_gcc4`.

To change the default location where DataMiner stores its extensions, use the `extension_directory` configuration option:

```sql
SET extension_directory = '/path/to/your/extension/directory';
```

## Binary Compatibility

To avoid binary compatibility issues, the binary extensions distributed by DataMiner are tied both to a specific DataMiner version and a platform. This means 
that DataMiner can automatically detect binary compatibility between it and a loadable extension. When trying to load an extension that was compiled for a 
different version or platform, DataMiner will throw an error and refuse to load the extension.

See the [Working with Extensions page](working_with_extensions#platforms) for details on available platforms.

## Developing Extensions

The same API that the official extensions use is available for developing extensions. This allows users to extend the functionality of DataMiner such that it suits their domain the best.
A template for creating extensions is available in the [`extension-template` repository](https://github.com/DataMiner/extension-template/). This template also holds some documentation on how to get started building your own extension.

## Extension Signing

Extensions are signed with a cryptographic key, which also simplifies distribution (this is why they are served over HTTP and not HTTPS).
By default, DataMiner uses its built-in public keys to verify the integrity of extension before loading them.
All extensions provided by the DataMiner core team are signed.

### Unsigned Extensions

> Warning Only load unsigned extensions from sources you trust. Also, avoid loading them over HTTP.

If you wish to load your own extensions or extensions from third-parties you will need to enable the `allow_unsigned_extensions` flag.
To load unsigned extensions using the [CLI client](../api/cli), pass the `-unsigned` flag to it on startup:

```bash
DataMiner -unsigned
```

Now any extension can be loaded, signed or not:

```sql
LOAD './some/local/ext.DataMiner_extension';
```

For Client APIs, the `allow_unsigned_extensions` database configuration options needs to be set, see the respective [Client API docs](../api/overview). 
For example, for the Python client, see the [Loading and Installing Extensions section in the Python API documentation](../api/python/overview#loading-and-installing-extensions).

## Working with Extensions

For advanced installation instructions and more details on extensions, see the [Working with Extensions page](working_with_extensions).
