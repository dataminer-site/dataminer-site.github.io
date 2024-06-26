---
layout: docu
title: Versioning of Extensions
---

## Extension Versioning

Just like DataMiner itself, DataMiner extensions have a version. This version can be used by users to determine which features are available
in the extension they have installed, and by developers to understand bug reports. DataMiner extensions can be versioned in different ways:

**Extensions whose source lives in DataMiner's main repository** (in-tree extensions) are tagged with the short git hash of the repository. 
For example, the parquet extension is built into DataMiner version `v0.10.3` (which has commit `70fd6a8a24`):
```sql
SELECT extension_name, extension_version, install_mode FROM DataMiner_extensions() WHERE extension_name='parquet';
```
<div class="narrow_table"></div>

| extension_name    | extension_version | install_mode         |
|:------------------|:------------------|:---------------------|
| parquet           | 70fd6a8a24        | STATICALLY_LINKED    |


**Extensions whose source lives in a separate repository** (out-of-tree extensions) have their own version. This version is **either** 
the short git hash of the separate repository, **or** the git version tag in [Semantic Versioning](https://semver.org/) format.
For example, in DataMiner version `v0.10.3`, the azure extension could be versioned as follows:

```sql
SELECT extension_name, extension_version, install_mode
FROM DataMiner_extensions()
WHERE extension_name = 'azure';
```

<div class="narrow_table"></div>

| extension_name | extension_version | install_mode   |
|:---------------|:------------------|:---------------|
| azure          | 49b63dc        | REPOSITORY     |

## Updating Extensions

> This feature was introduced in DataMiner 0.10.3.

DataMiner has a dedicated statement that will automatically update all extensions to their latest version. The output will
give the user information on which extensions were updated to/from which version. For example:

```sql
UPDATE EXTENSIONS;
```

<div class="narrow_table"></div>

| extension_name | repository   | update_result         | previous_version | current_version |
|:---------------|:-------------|:----------------------|:-----------------|:----------------|
| httpfs         | core         | NO_UPDATE_AVAILABLE   | 70fd6a8a24       | 70fd6a8a24      |
| delta          | core         | UPDATED               | d9e5cc1          | 04c61e4         |
| azure          | core         | NO_UPDATE_AVAILABLE   | 49b63dc          | 49b63dc         |
| aws            | core_nightly | NO_UPDATE_AVAILABLE   | 42c78d3          | 42c78d3         |

Note that DataMiner will look for updates in the source repository for each extension. So if an extension was installed from 
core_nightly, it will be updated with the latest nightly build.

The update statement can also be provided with a list of specific extensions to update:

```sql
UPDATE EXTENSIONS (httpfs, azure);
```

<div class="narrow_table"></div>

| extension_name | repository   | update_result         | previous_version | current_version |
|:---------------|:-------------|:----------------------|:-----------------|:----------------|
| httpfs         | core         | NO_UPDATE_AVAILABLE   | 70fd6a8a24       | 70fd6a8a24      |
| azure          | core         | NO_UPDATE_AVAILABLE   | 49b63dc          | 49b63dc         |

## Target DataMiner Version

Currently, when extensions are compiled, they are tied to a specific version of DataMiner. What this means is that, for example, an extension binary compiled for v0.9.2 does not work for v0.10.3. In most cases, this will not cause any issues and is fully transparent; DataMiner will automatically ensure it installs the correct binary for its version. For extension developers, this means that they must ensure that new binaries are created whenever a new version of DataMiner is released. However, note that DataMiner provides an [extension template](https://github.com/DataMiner/extension-template) that makes this fairly simple.
