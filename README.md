# `gettext`

`gettext` on [`ubi8/minimal`][ubi8].

## Prerequisites

Install [Docker][docker] and configure [BuildKit][buildkit]:

```sh
docker buildx create --use --name buildkit
```

## Usage

```sh
docker run --rm -it quay.io/bitski/gettext:latest
```

## Build

Build a local image:

```sh
docker buildx build --tag quay.io/bitski/gettext:latest --load .
```

## Publish

Login Quay.io:

```sh
docker login quay.io
```

Then build and publish a [multi-platform image][docker-multiplatform]:

```sh
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --tag quay.io/bitski/gettext:latest \
  --push .
```

[buildkit]: https://github.com/moby/buildkit
[docker-multiplatform]: https://docs.docker.com/build/buildx/multiplatform-images/
[docker]: https://www.docker.com/get-started/
[ubi8]: https://catalog.redhat.com/software/containers/ubi8-minimal/5c64772edd19c77a158ea216
