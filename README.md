# debinata

A specialized Ubuntu Docker image targeted for GNS3.

## Build

```sh
docker build -t debinata .
```

## Run

```sh
docker run -it --rm debinata
```

This drops you into an interactive `bash` login shell. Pass a command instead to run it directly:

```sh
docker run --rm debinata debinet-tools
```

## Contents

- `Dockerfile` — image definition, based on `debian:trixie`
- `motd.sh` — login banner, installed as `/etc/profile.d/motd.sh`
- `debinet-tools.sh` — lists installed networking tools, installed as `/usr/local/bin/debinet-tools`
- `debinet-init.sh` — PID 1 entrypoint (`/etc/debinet-init.sh`); runs `/root/init.sh` if present, then execs the given command or an interactive shell via `dumb-init`
