# show commands
default:
    just --list

# build release
build:
    uv build
    cargo build --release

build-linux-amd64:
    rustup target add x86_64-unknown-linux-gnu
    cargo build --release --target x86_64-unknown-linux-gnu

build-linux-arm64:
    rustup target add aarch64-unknown-linux-gnu
    cargo build --release --target aarch64-unknown-linux-gnu

docker-linux-amd64:
    mkdir -p docker/linux/amd64
    cp target/x86_64-unknown-linux-gnu/release/libtaranaki.so docker/linux/amd64
    docker build --platform linux/amd64 --tag taranaki:amd64 docker/

docker-linux-arm64:
    mkdir -p docker/linux/arm64
    cp target/aarch64-unknown-linux-gnu/release/libtaranaki.so docker/linux/arm64
    docker build --platform linux/arm64 --tag taranaki:arm64 docker/


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
        --loadmodule "/app/target/release/libtaranaki.so" \

# run Valkey container
valkey:
    docker run --rm -it \
        --name valkey \
        -p 127.0.0.1:6379:6379 \
        --volume $PWD:/app \
        valkey/valkey:9.0.2 \
        valkey-server \
        --loadmodule "/app/target/release/libtaranaki.so" \

# run Redict container
redict:
    docker run --rm -it \
        --name redict \
        -p 127.0.0.1:6379:6379 \
        --volume $PWD:/app \
        registry.redict.io/redict:7.3.6 \
        redict-server \
        --loadmodule "/app/target/release/libtaranaki.so" \

# run released version
released:
    docker run --rm -it \
        --name taranaki \
        -p 127.0.0.1:6379:6379 \
        xelato/taranaki:latest

update-commands:
    uv run tools/update-commands.py > src/taranaki/compat/commands.py

# run the redis cli
cli:
    redis-cli

# clean-up work tree
clean:
    rm -rf .venv/
    rm -rf .ruff_cache/
    find . -name "__pycache__" | xargs -n1 rm -rf
    rm -rf dist/
    rm -rf .pytest_cache/
    rm -rf bin/

# check for errors
check:
    uvx ruff format
    uvx ruff check
    cargo fmt --all
    cargo fmt --check
    go fmt taranaki.dev/proxy/...

# test
pytest:
    uv run --with pytest pytest

# build OCI container
docker-build:
    cp target/release/libtaranaki.so docker/
    docker build --tag taranaki:latest docker/
    rm -f docker/libtaranaki.so

# run OCI container
docker-run:
    docker run --rm -it \
        --name taranaki \
        -p 127.0.0.1:6379:6379 \
        taranaki:latest

go:
    go build -o bin/ \
        -ldflags "-X 'taranaki.dev/proxy/cmd/taranaki-proxy.Version=1.2.3'" \
        ./cmd/taranaki-proxy

go-dev:
    # go install github.com/spf13/cobra-cli@latest
    mkdir -p .go
    docker run --rm -it \
        --name go \
        --memory 1G \
        --volume $PWD:/app \
        --volume .go/:/go \
        golang:1.26-trixie \
        bash

proxy:
    ./bin/taranaki-proxy run --key /app/hello
