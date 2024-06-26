---
layout: docu
redirect_from:
- docs/archive/0.9.2/guides/python/install
- docs/archive/0.9.1/guides/python/install
- docs/archive/0.9.0/guides/python/install
title: Install the Python Client
---

The latest release of the Python client can be installed using `pip`.

```bash
pip install dataminer
```

The pre-release Python client can be installed using `--pre`.

```bash
pip install DataMiner --upgrade --pre
```

The latest Python client can be installed from source from the [`tools/pythonpkg` directory in the DataMiner GitHub repository](https://github.com/powerfull-scrapper/landing/tree/main/tools/pythonpkg).

```bash
BUILD_PYTHON=1 GEN=ninja make
cd tools/pythonpkg
python setup.py install
```