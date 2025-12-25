#!/bin/bash
set -e

# Brev Doctor Auto-Generated Setup Script
# Generated: 2025-12-25T09:19:29.817Z

echo '🚀 Setting up Brev environment...'

docker build --pull --no-cache --tag circuit_training:gpu --build-arg base_image=nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04 --build-arg tf_agents_version='tf-agents-nightly[reverb]' --build-arg dreamplace_version='dreamplace_20231214_c5a83e5_python3.9.tar.gz' -f tools/docker/ubuntu_circuit_training ./tools/docker/
docker run --rm --gpus all -v $(pwd):/workspace --workdir /workspace circuit_training:gpu bash tools/e2e_smoke_test.sh --root_dir /workspace/logs

echo '✅ Setup complete!'