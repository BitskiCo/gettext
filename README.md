# `gettext`

`gettext` on [`ubi8/minimal`][ubi8].

## Prerequisites

Install [Docker][docker] and configure [BuildKit][buildkit]:

```sh
docker buildx create --use --name buildkit
```

## Build

Build a local image:

```sh
docker buildx bake --load local
```

## Startup Test

Test that the image runs:

```sh
docker run --rm -it quay.io/bitski/gettext:latest sh -c \
  'echo \$PATH \$HOME | envsubst \$HOME'
# $PATH /root
```

## Publish

Login Quay.io:

```sh
docker login quay.io
```

Then build and publish a [multi-platform image][docker-multiplatform]:

```sh
docker buildx bake --push
```

[buildkit]: https://github.com/moby/buildkit
[docker-multiplatform]: https://docs.docker.com/build/buildx/multiplatform-images/
[docker]: https://www.docker.com/get-started/
[ubi8]: https://catalog.redhat.com/software/containers/ubi8-minimal/5c64772edd19c77a158ea216
