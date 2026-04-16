FROM valkey/valkey:9.0.3

RUN mkdir -p /usr/local/lib/taranaki
COPY libtaranaki_python.so /usr/local/lib/taranaki/
CMD valkey-server --loadmodule "/usr/local/lib/taranaki/libtaranaki_python.so"
