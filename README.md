# Stackage prebuilt Docker image

This repo contains the `Dockerfile` and script to build a Docker image with
almost all packages from a recent Stackage LTS snapshot prebuilt.

The base image is `ubuntu:disco`. The Stackage LTS snapshot version is
`lts-14.9`. All packages are built with a single `stack build --haddock`
command.

It takes ~4h on an 8-cores AWS Lightsail instance to build the image. The
resulting image has roughly 4GB compressed size, and can be useful as a base
image for CI.

## Packages not yet included

* `cuda`: NVidia doesn't release the official CUDA toolchain for Ubuntu disco
  yet.
* `hadolint`: Fails to link due to some glibc static linking issue.
* `windns`: Fails to compile, no idea why.

The following packages fail at the haddock stage:

* `bins`
* `classy-prelude-yesod`
* `elm-street`
* `emd`
* `hmatrix-backprop`
* `modular`
* `polysemy-zoo`

## Prebuilt image on Docker Hub

`terrorjack/stackage:lts-14.9` exists. We won't delete this one, but we may
change it (e.g. adding or removing packages). Also we don't promise to push new
versions when new Stackage LTS snapshots are released.

If you're looking for a decent solution to prebuilt Haskell dependencies, Nix
and nixpkgs should be the way to go.
