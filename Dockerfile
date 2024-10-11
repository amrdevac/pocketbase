FROM ghcr.io/pocketbase/pocketbase:latest

# Copy the PocketBase files if you have any additional files or configs
COPY . /app

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
