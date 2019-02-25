FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y \
    xvfb \
  && rm -rf /var/lib/apt/lists/*

ENV DISPLAY="1920x1080x24" \
  DISPLAY=":99" \
  LIBGL_ALWAYS_SOFTWARE="1" \
  LP_NO_RAST="false" \
  LP_DEBUG="" \
  LP_PERF="" \
  LP_NUM_THREADS=""
