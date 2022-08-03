FROM alpine:3 AS download
ARG PREFILL_VERSION=1.2.1
RUN \
    cd /tmp && \
    wget -O SteamPrefill.zip https://github.com/tpill90/steam-lancache-prefill/releases/download/v${PREFILL_VERSION}/SteamPrefill-${PREFILL_VERSION}-linux-x64.zip && \
    unzip SteamPrefill.zip && \
    mv SteamPrefill-${PREFILL_VERSION}-linux-x64\\SteamPrefill SteamPrefill && \
    chmod +x SteamPrefill

FROM ubuntu:22.04
LABEL maintainer="jess@mintopia.net"

COPY --from=download /tmp/SteamPrefill /usr/bin/SteamPrefill
RUN \
    mkdir -p /app

WORKDIR /app
ENTRYPOINT [ "SteamPrefill" ]
