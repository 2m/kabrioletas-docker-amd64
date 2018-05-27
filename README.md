# Kabrioletas Docker image [![travis-badge][]][travis] [![docker-badge][]][docker]

[travis]:                https://travis-ci.org/2m/kabrioletas-docker-amd64
[travis-badge]:          https://travis-ci.org/2m/kabrioletas-docker-amd64.svg?branch=master
[docker]:                https://hub.docker.com/r/martynas/kabrioletas-amd64
[docker-badge]:          https://img.shields.io/docker/pulls/martynas/kabrioletas-amd64.svg

This repository contains a Docker image for [Kabrioletas](https://github.com/2m/kabrioletas) Twitter bot.

## Running

Copy [`application.conf`](https://github.com/2m/kabrioletas/blob/master/src/main/resources/application.conf) to `kabrioletas.conf` and fill in all of the required credentials. Then run:

```bash
docker run -d --restart=unless-stopped -v $PWD:/config \
  martynas/kabrioletas-amd64:latest \
  -J-Dconfig.file=/config/kabrioletas.conf
```
