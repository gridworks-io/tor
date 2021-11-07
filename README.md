# Tor

Deploy a Tor container in your local cloud environment.

## Prerequisites

- `podman` or `docker` binary (doesn't really matter).

## Build image locally

Clone and build the repo with `podman` or `docker` binary.

```sh
  git clone https://github.com/gridworks-io/tor-container.git
  podman build .
```

## Pulling the container image from Docker Hub.

```sh
  podman pull docker.io/gwio/tor:latest
```

## Running the container image locally.

The container image exposes the following TCP ports:

- 9050
- 9051
- 29050
- 29051

```sh
  podman run --rm -d -p 9050:9050 \
  -p 9051:9051 \
  -p 29050:29050 \
  -p 29051:29051 \
  --name tor \
  docker.io/gwio/tor:latest
```

