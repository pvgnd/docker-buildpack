#!/bin/bash

set -e


export RUSTUP_HOME=/usr/local/rust
export CARGO_HOME=/usr/local/cargo

curl -sSL https://sh.rustup.rs | sh -s - --no-modify-path --profile minimal --default-toolchain ${RUST_VERSION} -y


export_env RUST_BACKTRACE 1
export_path "/usr/local/cargo/bin"


rustup --version
cargo --version
rustc --version
