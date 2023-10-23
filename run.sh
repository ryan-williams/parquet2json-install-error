#!/bin/bash --login

if [ "$PWD" == "/" ]; then
    export REPO=/rc
else
    export REPO=$PWD/rc
fi
dir=$REPO/git
mkdir -p $dir/rm
echo "Adding git helpers repo $dir to PATH"
export PATH="$dir:$PATH"
echo "PATH: $PATH"
cargo install parquet2json
