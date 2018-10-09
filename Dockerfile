FROM alpine

RUN apk --no-cache add --update docker
WORKDIR /app
COPY docker-gc.sh /app
RUN chmod +x /app/docker-gc.sh

## defaul interval 24h
ENV INTERVAL 86400

CMD ["sh", "/app/docker-gc.sh"]