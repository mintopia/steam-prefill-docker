FROM alpine:3 AS download
ARG PREFILL_VERSION=1.2.2
RUN \
    cd /tmp && \
    wget -O SteamPrefill.zip https://github.com/tpill90/steam-lancache-prefill/releases/download/v${PREFILL_VERSION}/SteamPrefill-${PREFILL_VERSION}-linux-x64.zip && \
    unzip SteamPrefill.zip && \
    mv SteamPrefill-${PREFILL_VERSION}-linux-x64\\SteamPrefill SteamPrefill && \
    chmod +x SteamPrefill

FROM ubuntu:22.04
LABEL maintainer="jess@mintopia.net"

ARG DEBIAN_FRONTEND=noninteractive

RUN \
    apt-get update && \
    apt-get install -y ca-certificates && \
    mkdir -p /app && \
    rm -rf /var/lib/apt/lists/*

COPY --from=download /tmp/SteamPrefill /app/SteamPrefill

WORKDIR /app
ENTRYPOINT [ "/app/SteamPrefill" ]
