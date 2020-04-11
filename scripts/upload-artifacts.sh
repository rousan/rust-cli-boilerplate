#!/bin/bash

set -e

if [ ! -f .env ]
then
  export $(cat .env | xargs)
fi

github-release upload \
    --user rousan \
    --repo rust-cli-boilerplate \
    --tag v0.1.0 \
    --name "rust-cli-boilerplate-x86_64-apple-darwin.tar.xz" \
    --file dist/rust-cli-boilerplate-x86_64-apple-darwin.tar.xz

github-release upload \
    --user rousan \
    --repo rust-cli-boilerplate \
    --tag v0.1.0 \
    --name "rust-cli-boilerplate-x86_64-apple-darwin.tar.xz" \
    --file dist/rust-cli-boilerplate-x86_64-apple-darwin.tar.xz

github-release upload \
    --user rousan \
    --repo rust-cli-boilerplate \
    --tag v0.1.0 \
    --name "rust-cli-boilerplate-x86_64-unknown-linux-gnu.tar.xz" \
    --file dist/rust-cli-boilerplate-x86_64-unknown-linux-gnu.tar.xz