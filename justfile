# show commands
default:
    just --list

# build module with cargo
build:
    cargo build --release

# format source code
fmt:
    cargo fmt --all --verbose

# serve local redis with module
serve:
    redis-server --loadmodule "target/release/libtaranaki.dylib"

# run the redis cli
cli:
    redis-cli


# dev tools installed with brew
brew-deps:
    brew install wasmtime
    brew install wasm-tools
    brew install wabt
    brew install wasm3


# dev tools installed with cargo
cargo-deps:
    cargo install wasmtime-cli
    cargo install wasmer-cli --features "singlepass,cranelift"
    cargo install wit-bindgen-cli
    cargo install warg-cli
    cargo install wkg


# validate .wit definitions
wit-validate:
    wasm-tools component wit interfaces/taranaki/component
    wasm-tools component wit interfaces/taranaki/redis


# wkg command wrapper
export WKG_CONFIG_FILE := 'wkg-config.toml'
wkg *ARGS:
    wkg {{ARGS}}


wit-build:
    just wkg wit build -d providers/ngrok
    just wkg wit build -d interfaces/taranaki/redis
    just wkg wit build -d components/hello

#wit-publish:
#    warg publish release --name rocketniko:redis --version 0.0.1 rocketniko:redis@0.0.1.wasm
#    warg publish release --name rocketniko:hello --version 0.0.1 rocketniko:hello@0.0.1.wasm
# wkg oci push -u user -p pass ghcr.io/xelato/taranaki/redis:0.0.1 redis.wasm
