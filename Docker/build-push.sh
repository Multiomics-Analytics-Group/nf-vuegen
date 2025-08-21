#!/bin/bash
set -euo pipefail

ORG="quay.io/dtu_biosustain_dsp"
VERSION="v0.5.0"

# 1. Build & push the base image (nextflow version)
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --push \
  -t ${ORG}/vuegen:${VERSION}-nextflow \
  -f nextflow.Dockerfile .

# 2. Build & push the wrapper image (docker version with ENTRYPOINT)
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --build-arg BASE_VERSION=${VERSION}-nextflow \
  --push \
  -t ${ORG}/vuegen:${VERSION}-docker \
  -f docker.Dockerfile .