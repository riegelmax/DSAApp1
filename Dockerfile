# Start with a minimal base image
FROM alpine:latest

# Install necessary dependencies (if needed)
RUN apk add --no-cache ca-certificates

# Set working directory
WORKDIR /app

# Copy PocketBase binary (you should have downloaded and renamed it to 'pocketbase')
COPY pocketbase .

# Make PocketBase executable
RUN chmod +x pocketbase

# Create a folder for data (this matches the disk mount path in Render)
RUN mkdir -p /app/pb_data

# Set environment variable for PocketBase (optional, but helpful for logs)
ENV PB_DATA_DIR=/app/pb_data

# Expose the port Render expects
EXPOSE 8090

# Default command to run PocketBase (binding to 0.0.0.0 for Docker)
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090", "--dir=/app/pb_data"]
