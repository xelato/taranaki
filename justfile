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
        --name dev \
        --memory 4G \
        --volume $PWD:/app \
        --volume .cargo/registry:/usr/local/cargo/registry \
        --volume .cargo/git:/usr/local/cargo/git \
        rust:1.93 \
        bash

# run Redis container
redis:
    docker run --rm -it \
        --name redis \
        -p 127.0.0.1:6379:6379 \
        --volume $PWD:/app \
        redis:7.2.13 \
        redis-server \
        --loadmodule "/app/target/release/libtaranaki_python.so" \
        --loadmodule "/app/target/release/libtaranaki_wasm.so" \

# run Valkey container
valkey:
    docker run --rm -it \
        --name valkey \
        -p 127.0.0.1:6379:6379 \
        --volume $PWD:/app \
        valkey/valkey:9.0.2 \
        valkey-server \
        --loadmodule "/app/target/release/libtaranaki_python.so" \
        --loadmodule "/app/target/release/libtaranaki_wasm.so" \

# run Redict container
redict:
    docker run --rm -it \
        --name redict \
        -p 127.0.0.1:6379:6379 \
        --volume $PWD:/app \
        registry.redict.io/redict:7.3.6 \
        redict-server \
        --loadmodule "/app/target/release/libtaranaki_python.so" \
        --loadmodule "/app/target/release/libtaranaki_wasm.so" \

update-commands:
    uv run tools/update-commands.py > src/taranaki/compat/commands.py

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
    uv run --with pytest pytest
