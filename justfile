# show commands
default:
    just --list

# build dev
build:
    uv build
    cargo build

# build release
release:
    uv build
    cargo build --release

# start dev container
dev:
    # run in container:
    # apt-get update
    # apt-get install -y libclang-dev
    mkdir -p .cargo/{registry,git}
    docker run --rm -it \
        --memory 4G \
        --volume $PWD:/app \
        --volume .cargo/registry:/usr/local/cargo/registry \
        --volume .cargo/git:/usr/local/cargo/git \
        rust:1.93 \
        bash

# run Redis container
redis:
    docker run --rm -it \
        -p 127.0.0.1:6379:6379 \
        --volume $PWD:/app \
        redis:8.6 \
        redis-server \
        --loadmodule "/app/target/release/libtaranaki_python.so" \
        --loadmodule "/app/target/release/libtaranaki_wasm.so" \

# run Valkey container
valkey:
    docker run --rm -it \
        -p 127.0.0.1:6379:6379 \
        --volume $PWD:/app \
        valkey/valkey:9.0.2 \
        valkey-server \
        --loadmodule "/app/target/release/libtaranaki_python.so" \
        --loadmodule "/app/target/release/libtaranaki_wasm.so" \


# run the redis cli
cli:
    redis-cli

# clean-up work tree
clean:
    rm -rf .venv
    rm -rf .ruff_cache
    find . -name "__pycache__" | xargs -n1 rm -rf
    rm -rf dist

# check for errors
check:
    uvx ruff format
    uvx ruff check
    cargo fmt --all
    cargo fmt --check

# test
pytest:
    PYTHONPATH=. uv run --with pytest pytest
