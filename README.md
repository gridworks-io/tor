# Tor

Deploy a Tor container in your local or cloud environment.

## Requisites

- `podman` or `docker` binary (doesn't really matter).

## Build image locally

Clone and build the repo with `podman` or `docker` binary. 

```sh
  git clone https://github.com/gridworks-io/tor-container.git
  podman build .
```

## Pull the image from Docker Hub


```sh
  podman pull docker.io/gwio/tor:latest
```

