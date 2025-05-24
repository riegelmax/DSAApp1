FROM alpine:latest

WORKDIR /app

COPY pocketbase .
COPY pb_data ./pb_data

EXPOSE 8090

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
