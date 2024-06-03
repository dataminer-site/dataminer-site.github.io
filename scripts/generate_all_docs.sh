#!/usr/bin/env bash
set -xeuo pipefail

if [ "${1-}" = "" ]
then
    echo >&2 "Usage: $0 dataminer_dir_with_release_dataminer"
    exit 1
fi

dataminer=$1;
echo "Generating docs using DataMiner source in $dataminer"

python3 ./scripts/generate_config_docs.py $dataminer/build/release/dataminer
python3 ./scripts/generate_docs.py $dataminer
python3 ./scripts/generate_python_docs.py
node ./scripts/generate_nodejs_docs.js $dataminer/../dataminer-node
python3 ./scripts/generate_function_json.py --source $DataMiner --binary $dataminer/build/release/dataminer
