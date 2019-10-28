FROM ubuntu:eoan

ENV \
  DEBIAN_FRONTEND=noninteractive \
  LANG=en_US.UTF-8 \
  LC_ALL=en_US.UTF-8 \
  LC_CTYPE=en_US.UTF-8 \
  PATH=/root/.local/bin:${PATH}

WORKDIR /root

COPY build.sh /tmp/build.sh
COPY config.yaml /tmp/config.yaml

RUN /tmp/build.sh
