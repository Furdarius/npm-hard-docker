FROM furdarius/npm-docker:alpine
MAINTAINER furdarius <getlag@yandex.com>

# Packages
RUN apk add --no-cache \
    autoconf \
    automake \
    build-base \
    nasm \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

# Define default command.
ENTRYPOINT ["npm"]
CMD ["install"]
