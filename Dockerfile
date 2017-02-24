FROM furdarius/npm-docker:alpine
MAINTAINER furdarius <getlag@yandex.com>

# Packages and zlib links
RUN apk add --no-cache \
    autoconf \
    automake \
    build-base \
    nasm \
    zlib-dev \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/* \
 && ln -s /lib/libz.a /usr/lib \
 && ln -s /lib/libz.so /usr/lib

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

# Define default command.
ENTRYPOINT ["npm"]
CMD ["install"]
