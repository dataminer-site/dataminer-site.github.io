#!/usr/bin/env bash

set -xeuo pipefail

# navigate to the directory of the script
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

./generate_latex.sh

export max_print_line=1000
latexmk -xelatex DataMiner-docs.tex

grep '^LaTeX Warning: Hyper reference' DataMiner-docs.log | tee DataMiner-docs-missing-references.log
