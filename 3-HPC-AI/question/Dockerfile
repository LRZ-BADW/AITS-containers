FROM alpine:3 AS builder
ARG WHSIPER_VERSION="v1.4.0"
RUN apk update; apk add --no-cache git make gcc g++
RUN git clone --depth=1 --branch=${WHSIPER_VERSION} https://github.com/ggerganov/whisper.cpp.git /opt/whisper.cpp
WORKDIR /opt/whisper.cpp
RUN make

FROM alpine:3
RUN apk update; apk add --no-cache gcc
COPY --from=builder /opt/whisper.cpp /opt/whisper.cpp
RUN ln -s /opt/whisper.cpp/main /usr/local/bin/whisper
WORKDIR /data
ENTRYPOINT ["/bin/sh"]