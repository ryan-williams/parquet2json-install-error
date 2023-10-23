#!/bin/bash --login

shopt -s expand_aliases
. rc/.dotfiles-rc
type xt
echo "PATH:"
echo $PATH | tr : '\n'
echo
cargo install parquet2json
