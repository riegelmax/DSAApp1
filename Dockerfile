FROM alpine:latest

WORKDIR /app

COPY pocketbase .


EXPOSE 8090

CMD ["sh", "-c", "./pocketbase serve --http=0.0.0.0:${PORT}"]