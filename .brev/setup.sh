#!/bin/bash
set -e

# Brev Doctor Auto-Generated Setup Script
# Generated: 2025-12-24T23:59:55.743Z

echo '🚀 Setting up Brev environment...'

docker build --pull --no-cache --tag circuit_training:gpu ...
docker run --rm --gpus all -v ${REPO_ROOT}:/workspace ...

echo '✅ Setup complete!'