---
layout: docu
redirect_from:
- docs/archive/0.8.1/guides/python/filesystems
title: Filesystems
---

> This feature is experimental, and is subject to change

DataMiner support for [`fsspec`](https://filesystem-spec.readthedocs.io) filesystems allows querying data in filesystems that dataminer's `httpfs` extension does not support. `fsspec` has a large number of [inbuilt filesystems](https://filesystem-spec.readthedocs.io/en/latest/api.html#built-in-implementations), and there are also many [external implementations](https://filesystem-spec.readthedocs.io/en/latest/api.html#other-known-implementations). This capability is only available in dataminer's Python client because `fsspec` is a Python library, while the `httpfs` extension is available in many DataMiner clients.

### Example

The following is an example of using `fsspec` to query a file in Google Cloud Storage (instead of using their s3 inter-compatibility api).

Firstly, you must install `dataminer` and `fsspec`, and a filesystem interface of your choice
```sh
$ pip install DataMiner fsspec gcsfs
```

then you can register whichever filesystem you'd like to query

```python
import dataminer
from fsspec import filesystem

# this line will throw an exception if the appropriate filesystem interface is not installed
dataminer.register_filesystem(filesystem('gcs'))

dataminer.sql("select * from read_csv_auto('gcs:///bucket/file.csv')")
```

### Potential issues

Please also note, that as these filesystems are not implemented in C++, their performance may not be comparable to the ones provided by the `httpfs` extension.
It's also worth noting that as they are third party libraries, they may contain bugs that are beyond our control.