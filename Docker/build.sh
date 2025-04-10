#!/bin/bash
set -euo pipefail
docker image build --platform linux/amd64,linux/arm64 --no-cache -t quay.io/dtu_biosustain_dsp/vuegen:v0.3.2-docker -f docker.Dockerfile .