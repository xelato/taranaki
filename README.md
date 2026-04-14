# 🌋 Taranaki

[Taranaki](https://github.com/xelato/taranaki), 
named after the landmark giant on the edge of the Tasman Sea, is a software framework that adds 
[Python](https://www.python.org) analytics and web-platform capabilities to a 
[remote](https://redict.io) 
[dictionary](https://redis.io) 
[server](https://valkey.io). 
Written in [Rust](https://rust-lang.org) and based on [Monty](https://github.com/pydantic/monty), it runs Python in a controlled sandboxed environment, in-process and with a minimal memory footprint. MIT-licensed.

## Quick start

```
$ docker run --rm -it xelato/taranaki
```
Use a [RESP](https://redis.io/docs/latest/develop/reference/protocol-spec/)-capable client to deploy and call an app.
```
SET /app/hello "r=request(); 'Hello, ' + r.args.get('name', 'world'), 200"
```
```
PY.HTTP /app/hello GET /hello?name=Taranaki
```
```
1) (integer) 200
2) 1) "Hello, Taranaki"
```

## But why?...
By running compute in-process alongside the data that's already stored in-memory should bring efficiencies simply from skipping the process and network boundaries.

### Move code, not data
Old as it goes, it's easier to walk to a mountain rather than moving the mountain.
It is often the case in some environments that hundreds of megabytes cross the network on each request just to compute a much smaller output set. Not particularly something new, but this could be avoided simply by moving code to where data lives, and not vice-versa.

### Operational simplicity
* Deploy code to a primary in-memory datastore and serve requests from Taranaki-enabled read-only replicas, obliterating the need for separate web-workers.
* Drive traffic from the edge with an HTTP/RESP-capable stateless gateway proxy server.
* Backup and restore of code and data from a single backup removes the possibility for version mismatch errors between data and code.

## Examples
Solutions built on Taranaki, will be showcased here.

## Platform
Supported Python code can be run on the server with or without persisting it to a key. Persisted code executed more than once has performance benefits from being stored warmed-up (tbd.)

### Functions
```
PY.EVAL <code> [ARG [ARG [...]]]
PY.CALL <key> [ARG [ARG [...]]]
```

Code/functions can read arguments with `sysargv()`.

#### Server commands
The platform makes existing data-related server commands available for use inside the remote interpreter. Those come as readily available external functions (e.g. `get()`, `set_()`, `incr()`). Their availability depends on the server variant and version, and also on the mode (normal or readonly).

To see the list of available commands:
```
PY.EVAL "sorted(commands())"
```

To avoid naming conflicts with Python keywords, builtin names or stdlib modules, some of the functions are either renamed or have a trailing underscore.

#### Read-only mode
The platform supports two execution modes - normal and readonly. The latter only makes available server commands that do not change server state.
```
127.0.0.1:6379> PY.EVAL "len(commands())"
(integer) 188
127.0.0.1:6379> PY.EVAL_RO "len(commands())"
(integer) 89
```

#### Lossy and lossless output
Lossless and lossy serialization

The lossy format:
- is the default for `PY.EVAL` and `PY.CALL`
- simple and eye-friendly in an interactive shell
- almost direct mapping between monty and server types
- information loss on certain types, e.g., no way to know whether an array came from list, tuple or set
- things that can't be represented natively, result as strings

Lossless format:
- is available for `PY.LL_EVAL` and `PY.LL_CALL`
- is to be used for integrating with external Python interpreters, where some of the execution happens remotely and results are consumed locally
- ensures correct representation of objects, so that they can be reconstructed on the client side
- should be optimised for correctness and performance
- might be replaced with a secure pickle-like implementation in future or an equally capable binary format

### HTTP handlers
Handlers are ordinary Python functions with additional semantic placed on their inputs and outputs.
A handler simply takes a request and returns a response.

The following platform commands assist that process
```
request() - Build a request from command arguments
response() - Build a response. Handlers can also return Flask-style 2/3 tuples: (content, status_code) or (content, status_code, headers).
redirect() - Redirect to a different location
call() and curl() - call other functions or handlers
```

Exceptions or bad return values get translated to an HTTP 500 error response.

To send real traffic to an installed HTTP handler, you'd need a reverse-proxy server capable of translating HTTP to RESP and back in the specific format used by Taranaki, described [here](https://github.com/xelato/taranaki/blob/main/crates/taranaki-python/src/http.md).

To make this possible, we're building integrations based on 
[Tailscale](https://tailscale.com), 
[Ngrok](https://ngrok.com), 
[Envoy](https://www.envoyproxy.io), 
and [Nginx](https://nginx.org/en/).

## CLI
The platform comes with a CLI and Python library to be installed from PyPI.
It handles transpiling, code deployment and provides simple proxy and shell.
```
uvx taranaki --help
```

## Library

### Compat library
Compatibility layer, so that code you write can pass type checks and be validated before executing it on a server.

### @taranaki.function()
This decorator delegates parts of your Python program for remote execution on a Taranaki-enabled server.

```
"""
A snake walks into a remote dictionary server.
It sums all the ints and floats.
Turns out it's an adder.
"""

import taranaki
from taranaki.compat.commands import set_, scan, mget, expire


@taranaki.function()
def the_adder():
    total, cursor = 0, 0
    while True:
        cursor, keys = scan(cursor, count=999)
        values = mget(*keys)
        for index, value in enumerate(values):
            try:
                total += int(value)
            except ValueError:
                continue
            expire(keys[index], 1000)
        if int(cursor) == 0:
            break
    set_("/total", total)
    return total


if __name__ == "__main__":
    the_adder()
```

### @taranaki.http() decorator
Define an HTTP handler, deploy to a server.

## Road to 1.0.0
tbd

## Contributing
tbd

## License
tbd
