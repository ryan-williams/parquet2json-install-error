FROM ubuntu
ENV PATH="/root/.cargo/bin:${PATH}"
RUN apt-get update \
 && apt-get install -y curl gcc perl make \
 && curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV VERBOSE=1
RUN apt-get install -y git
# RUN curl -L https://j.mp/_rc | bash -s -- runsascoded/.rc
COPY rc rc
COPY run.sh run.sh

#SHELL ["/bin/bash", "--login", "-c"]
# SHELL [ "bash", "--rcfile", ".rc/.dotfiles-rc", "-lc" ]
#RUN type echo
#RUN alias xt

#ENTRYPOINT [ "bash", "--rcfile", ".rc/.dotfiles-rc", "-lc", "type xt" ]
ENTRYPOINT [ "./run.sh" ]
