#!/bin/bash

# Stop and remove any existing containers
docker stop myapp || true
docker rm myapp || true

# Run the Docker container
docker run -d -p 3000:3000 --name myapp myapp:latest

