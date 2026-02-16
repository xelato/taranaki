# show commands
default:
    just --list

# build module with cargo
build:
    uv build
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

clean:
    rm -rf .venv
    rm -rf .ruff_cache
    find . -name "__pycache__" | xargs -n1 rm -rf
    rm -rf dist

check:
    uvx ruff format
    uvx ruff check
