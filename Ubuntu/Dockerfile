FROM ubuntu:jammy-20240212

RUN apt-get update && apt-get install -y \
    ca-certificates \
    bash \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

SHELL ["/bin/bash", "-c"]

