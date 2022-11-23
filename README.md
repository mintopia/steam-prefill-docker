# Dockerised Steam Prefill - Deprecated

[![](https://dcbadge.vercel.app/api/server/BKnBS4u?style=flat-square)](https://discord.com/invite/lancachenet)

## Deprecated

> **Warning**
> This project is deprecated, the official Docker image should be used instead: 
> https://hub.docker.com/r/tpill90/steam-lancache-prefill
>
> The setup guide can be found at: [Setup Guide](https://tpill90.github.io/steam-lancache-prefill/install-guides/Docker-Setup-Guide)



## Introduction

Dockerfile, docker-compose and helper scripts for running [tpill90](https://github.com/tpill90)'s [steam-lancache-prefill](https://github.com/tpill90/steam-lancache-prefill) within a docker container.

## Usage

Prerequisites

 - Git
 - Docker

Clone this repository and then use either the `SteamPrefill` command or `SteamPrefill.cmd` if you're on Windows.

```bash
git clone https://github.com/mintopia/steam-prefill-docker.git
cd steam-prefill-docker
./SteamPrefill select-apps
```

For instructions on how to use SteamPrefill please read the [README on the GitHub project](https://github.com/tpill90/steam-lancache-prefill).

Config and cache data are written to bind-mounted volumes.

### Running without Docker-Compose

This is NOT recommended as it's more awkward, but if you *really* want to:

```bash
docker run \
  -v ${PWD}/Cache:/app/Cache \
  -v ${PWD}/Config:/app/Config \
  -it \
  --rm \
  ghcr.io/mintopia/steam-prefill-docker:latest \
  select-apps
```

This will use the latest image from GHCR.

## Support

For support, please visit the [LanCache.Net Discord Server](https://discord.com/invite/lancachenet) in the `#steam-prefill` channel.

## Thanks

This would not exist without the following:

- [Tim Pilius](https://github.com/tpill90)
- LanCache.Net Team
- UK LAN Techs

## License

The MIT License (MIT)

Copyright (c) 2022 Jessica Smith

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
