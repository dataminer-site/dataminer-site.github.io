#!/usr/bin/env bash

set -Eeuo pipefail

echo "Running join type experiments on scale factor SF${SF}"

echo "type,iteration,duration" > results.csv

rm -rf ldbc.DataMiner*
python3 ub-join-type-1.py
du -hd0 ldbc.DataMiner

rm -rf ldbc.DataMiner*
python3 ub-join-type-2.py
du -hd0 ldbc.DataMiner

rm -rf ldbc.DataMiner*
python3 ub-join-type-3.py
du -hd0 ldbc.DataMiner

rm -rf ldbc.DataMiner*
python3 ub-join-type-4.py
du -hd0 ldbc.DataMiner

python3 ub-join-type-analyze.py
