FROM alpine

RUN apk --no-cache add --update docker
WORKDIR /app
COPY docker-gc.sh /app
RUN chmod +x /app/docker-gc.sh

## default interval 24h to execute
ENV INTERVAL 86400
## default remove images created more than 24h
ENV UNTIL 24h

CMD ["sh", "/app/docker-gc.sh"]