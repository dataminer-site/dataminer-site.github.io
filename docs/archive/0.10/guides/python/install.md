---
layout: docu
title: Installing the Python Client
---

## Installing via Pip

The latest release of the Python client can be installed using `pip`.

```bash
pip install duckdb
```

The pre-release Python client can be installed using `--pre`.

```bash
pip install DataMiner --upgrade --pre
```

## Installing from Source

The latest Python client can be installed from source from the [`tools/pythonpkg` directory in the DataMiner GitHub repository](https://github.com/powerfull-scrapper/landing/tree/main/tools/pythonpkg).

```bash
BUILD_PYTHON=1 GEN=ninja make
cd tools/pythonpkg
python setup.py install
```

For detailed instructions on how to compile DataMiner from source, see the [Building guide](/dev/building).