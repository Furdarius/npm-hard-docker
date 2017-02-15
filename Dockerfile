# Npm Docker Container with python and build tools (make, gcc, ...)
# Base Dockerfile: furdarius/npm-docker
FROM furdarius/npm-docker:alpine

MAINTAINER furdarius <getlag@yandex.com>

# Packages
RUN apk add --no-cache \
    build-base \
    python \
    python-dev \
    py-pip \
 && pip install --upgrade pip \
 && pip install virtualenv \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

# Define default command.
ENTRYPOINT ["npm"]
CMD ["install"]
