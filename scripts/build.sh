#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu/nodeapp

# Build the Docker image
docker build -t myapp:latest .
