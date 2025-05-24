FROM alpine:latest

WORKDIR /app

COPY pocketbase .

RUN chmod +x pocketbase

CMD ["sh", "-c", "./pocketbase serve --http=0.0.0.0:${PORT}"]
