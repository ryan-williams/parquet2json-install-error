#!/bin/bash --login

shopt -s expand_aliases

if [ "$PWD" == "/" ]; then
    export REPO=/rc
else
    export REPO=$PWD/rc
fi
dir=$REPO/git
echo "Adding git helpers repo $dir to PATH"
export PATH="$dir:$PATH"
echo "PATH: $PATH"
cargo install parquet2json
