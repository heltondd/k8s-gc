FROM alpine

## Docker Version Minimum 17.06.x
ENV DOCKER_VERSION="17.06.1-ce"
ENV DOWNLOAD_URL="https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz"

RUN apk --no-cache add --update curl \
    && mkdir -p /tmp/download \
    && curl -L $DOWNLOAD_URL | tar -xz -C /tmp/download \
    && mv /tmp/download/docker/docker /usr/local/bin/ \
    && rm -rf /tmp/download \
    && apk --no-cache del curl

WORKDIR /app
COPY docker-gc.sh /app
RUN chmod +x /app/docker-gc.sh

ENV INTERVAL="86400" UNTIL="24h"

ENTRYPOINT ["/app/docker-gc.sh"]