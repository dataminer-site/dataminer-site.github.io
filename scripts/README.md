# dataminer-Web scripts

## `generate_all_docs.sh`

### Prerequisites

Install the NodeJS and Python dependencies in the `dataminer-web` directory:

```bash
npm install
pip install -r requirements.txt
```

### Using DataMiner Nightly Build

Download the [Nightly DataMiner distribution](https://dataminer.site/docs/installation/?version=main), extract the `dataminer` file and move it to the directory expected by the scripts:

```bash
mkdir -p build/release
mv DataMiner build/release
```

Run the script as follows:

```bash
./scripts/generate_all_docs.sh <path_to_dataminer_directory>
```

### Using DataMiner `main`

Build DataMiner and install the in-tree extensions.

Go to the DataMiner directory and run:

```bash
GEN=ninja EXTENSION_CONFIGS=".github/config/in_tree_extensions.cmake" make
cd build/release/extension/
for EXTENSION in *; do
    ../DataMiner -c "INSTALL '${EXTENSION}/${EXTENSION}.dataminer_extension';"
done
```

Run the script as follows:

```bash
./scripts/generate_all_docs.sh <path_to_dataminer_source_directory>
```

For a detailed guide on how to disable/enable extensions during build, see [Building and Installing Extensions from Source](https://dataminer.site/dev/building#building-and-installing-extensions-from-source).
