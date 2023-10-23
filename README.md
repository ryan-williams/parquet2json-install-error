# parquet2json-install-error

Debugging an error installing [parquet2json] (see [#19]).

[My dotfiles][runsascoded/.rc] put [a directory named `rm`][git-helpers/rm] on `$PATH`, which can lead to an error like this (while building the [openssl-sys] dependency):

```bash
cargo install parquet2json
# …
#   --- stderr
#   make[1]: rm: Permission denied
#   make[1]: *** [Makefile:11815: providers/liblegacy.a] Error 127
#   make[1]: *** Waiting for unfinished jobs....
#   make: *** [Makefile:2142: build_libs] Error 2
#   thread 'main' panicked at /root/.cargo/registry/src/index.crates.io-6f17d22bba15001f/openssl-src-300.1.5+3.1.3/src/lib.rs:577:9:
```

Perplexingly, it even says `rm: Permission denied` when run as `root`. I guess this is what happens in some circumstances when trying to "execute" a directory. However, wherever I've tested it, I see an `Is a directory` error instead of `Permission denied` 🤷‍♂️.

[parquet2json]: https://github.com/jupiter/parquet2json
[#19]: https://github.com/jupiter/parquet2json/issues/19
[runsascoded/.rc]: https://github.com/runsascoded/.rc
[git-helpers/rm]: https://github.com/ryan-williams/git-helpers/tree/78ecd302c20fe0560990319fdb285662796fb29e/rm
[openssl-sys]: https://github.com/sfackler/rust-openssl
