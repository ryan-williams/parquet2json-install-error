#!/bin/bash --login

shopt -s expand_aliases
echo "Adding git helpers repo rc/git to PATH"
export PATH="rc/git:$PATH"
cargo install parquet2json
