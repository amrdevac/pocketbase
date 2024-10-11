FROM alpine:latest

# Copy PocketBase binary dari folder bin ke dalam image Docker
COPY ./bin/pocketbase /pocketbase

# Buat direktori data untuk menyimpan database
RUN mkdir /pb_data
ENV POCKETBASE_DATA=/pb_data

# Set permissions untuk menjalankan binary
RUN chmod +x /pocketbase

# Expose port 8090 untuk PocketBase
EXPOSE 8090

# Jalankan PocketBase pada port yang diinginkan
CMD ["/pocketbase", "serve", "--http=0.0.0.0:8090"]
