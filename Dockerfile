FROM ubuntu
ENV PATH="/root/.cargo/bin:${PATH}"
RUN apt-get update \
 && apt-get install -y curl gcc perl make \
 && curl https://sh.rustup.rs -sSf | bash -s -- -y

WORKDIR /root
RUN mkdir -p a/b/c/rm
ENV PATH="/root/a/b/c:${PATH}"
RUN echo $PATH
RUN ls -la /root/a/b/c
RUN cargo install parquet2json
