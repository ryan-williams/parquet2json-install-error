#!/bin/bash --login

set -x

shopt -s expand_aliases
. rc/.dotfiles-rc
type xt
cargo install parquet2json
