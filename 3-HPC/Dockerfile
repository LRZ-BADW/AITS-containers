FROM debian:11

# References
ARG WHSIPER_VERSION="v1.4.0"
LABEL maintainer = "Florent Dufour <florent@lrz.de>"

# Dependencies
ARG DEBIAN_FRONTEND=noninteractive
RUN --mount=type=cache,target=/var/cache/apt \
  apt-get update \
  && apt-get -yq upgrade \
  && apt-get install -yq git make gcc g++ ffmpeg

# Whisper
RUN git clone --depth=1 --branch=${WHSIPER_VERSION} https://github.com/ggerganov/whisper.cpp.git /opt/whisper.cpp
WORKDIR /opt/whisper.cpp
RUN make

ENTRYPOINT ["./main"]
