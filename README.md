# Stackage prebuilt Docker image

This repo contains the `Dockerfile` and script to build a Docker image with most
packages from a recent Stackage LTS snapshot prebuilt.

There are two variants: one is based on `ubuntu:focal`, another on
`alpine:edge`. The Stackage LTS snapshot version is `lts-14.19`. All packages
are built with a single `stack build --haddock` command.

It takes ~4h on an 8-cores AWS Lightsail instance to build the image. The
resulting image has roughly 4GB compressed size, and can be useful as a base
image for CI.
