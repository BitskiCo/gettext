# syntax=docker/dockerfile:1

FROM registry.access.redhat.com/ubi8-minimal AS release

RUN --mount=type=cache,target=/var/cache/yum \
    microdnf install -y gettext
