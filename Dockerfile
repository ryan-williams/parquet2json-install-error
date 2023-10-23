FROM ubuntu
ENV PATH="/root/.cargo/bin:${PATH}"
RUN apt-get update \
 && apt-get install -y curl gcc perl make \
 && curl https://sh.rustup.rs -sSf | bash -s -- -y

WORKDIR /root
# Putting a directory with basename `rm` on `$PATH` (by its absolute path)
# breaks `openssl-sys` build inside `cargo install parquet2json` below
ENV dir=/root/a/b/c
RUN mkdir -p $dir/rm
ENV PATH="$dir:${PATH}"
RUN echo $PATH
RUN ls -la $dir
RUN cargo install parquet2json
