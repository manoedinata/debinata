# debinata

Reconstructed Dockerfile for [`ardhptr21/debinet`](https://hub.docker.com/r/ardhptr21/debinet), a Debian-based networking toolbox image (built for GNS3) by maintainer `nazDridoy`.

No source Dockerfile was published alongside the image on Docker Hub, so this was rebuilt from `docker history --no-trunc` of the published image. The generated files (`motd.sh`, `debinet-tools.sh`, `debinet-init.sh`) were extracted into their own files instead of inline `RUN echo` chains, and verified to produce byte-identical output to the original image.

## Build

```sh
docker build -t debinet .
```

## Run

```sh
docker run -it --rm debinet
```

This drops you into an interactive `bash` login shell. Pass a command instead to run it directly:

```sh
docker run --rm debinet debinet-tools
```

## Contents

- `Dockerfile` — image definition, based on `debian:trixie`
- `motd.sh` — login banner, installed as `/etc/profile.d/motd.sh`
- `debinet-tools.sh` — lists installed networking tools, installed as `/usr/local/bin/debinet-tools`
- `debinet-init.sh` — PID 1 entrypoint (`/etc/debinet-init.sh`); runs `/root/init.sh` if present, then execs the given command or an interactive shell via `dumb-init`
