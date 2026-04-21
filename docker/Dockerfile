FROM --platform=$TARGETPLATFORM valkey/valkey:9.0.2
ARG TARGETOS
ARG TARGETARCH
COPY ${TARGETOS}/${TARGETARCH}/libtaranaki.so /usr/local/lib/
EXPOSE 6379
CMD valkey-server --loadmodule "/usr/local/lib/libtaranaki.so"
