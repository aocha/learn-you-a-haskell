FROM debian:stretch

RUN set -e \
  && apt-get update && apt-get install -y \
    haskell-platform \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /opt/haskell
WORKDIR /opt/haskell
COPY . /opt/haskell
