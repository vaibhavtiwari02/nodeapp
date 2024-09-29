#!/bin/bash

container_name=myapp

# ECR Login
#aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 123456789012.dkr.ecr.us-east-1.amazonaws.com
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 207567793991.dkr.ecr.us-east-1.amazonaws.com

# Pulling image from ECR
docker pull 207567793991.dkr.ecr.us-east-1.amazonaws.com/myapp:latest

# Stop and remove the current container
docker rm -f $container_name

# Creating and starting a docker container using a new image
docker run -d -p 3000:3000 --name $container_name 207567793991.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
