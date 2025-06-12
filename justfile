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

# install dependencies with brew
brew-deps:
    brew install wasmtime
    brew install wasm-tools
    brew install wabt

# development tools
cargo-deps:
    cargo install wit-bindgen-cli

# validate .wit definitions
wit:
    wasm-tools component wit wit/
