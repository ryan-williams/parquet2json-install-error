FROM ubuntu
ENV PATH="/root/.cargo/bin:${PATH}"
RUN apt-get update \
 && apt-get install -y curl gcc perl make \
 && curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV VERBOSE=1
COPY run.sh run.sh
RUN ./run.sh

ENTRYPOINT [ "./run.sh" ]
