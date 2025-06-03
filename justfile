# show commands
default:
    just --list

# build module with cargo
build:
    cargo build --release

# serve local redis with module
serve:
    redis-server --loadmodule "target/release/libtaranaki.dylib"

# run the redis cli
cli:
    redis-cli

# install macos dependencies
macos-brew-deps:
    brew install wasmtime wabt
