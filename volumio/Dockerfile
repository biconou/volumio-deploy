FROM node as builder


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	build-essential \
	libavahi-compat-libdnssd-dev \
	libudev-dev \
	python

# Build Volumio Core.
FROM builder as core-builder

RUN echo "toto li toto"



# FROM node:8

# COPY volumio-image-hacks /tmp/