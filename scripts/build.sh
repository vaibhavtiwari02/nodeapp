#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu/myapp

# Build the Docker image
docker build -t myapp:latest .
