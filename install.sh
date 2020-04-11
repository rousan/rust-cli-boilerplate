#!/bin/bash

set -e

LINUX_ARTIFACT="https://github.com/rousan/rust-cli-artifacts/releases/download/v0.1.0/rust-cli-boilerplate-x86_64-unknown-linux-gnu.tar.xz"
MACOS_ARTIFACT="https://github.com/rousan/rust-cli-artifacts/releases/download/v0.1.0/rust-cli-boilerplate-x86_64-apple-darwin.tar.xz"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  curl -fsSL "$LINUX_ARTIFACT" --output /tmp/instalify.output.tar.xz
  tar -xf /tmp/instalify.output.tar.xz -C /usr/local/bin/
  rm -rf /tmp/instalify.output.tar.xz
elif [[ "$OSTYPE" == "darwin"* ]]; then
  curl -fsSL "$MACOS_ARTIFACT" --output /tmp/instalify.output.tar.xz
  tar -xf /tmp/instalify.output.tar.xz -C /usr/local/bin/
  rm -rf /tmp/instalify.output.tar.xz
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  echo "Freebsd artifacts not found"
else
  echo "Unknown target"
fi