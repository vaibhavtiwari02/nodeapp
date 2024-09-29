#!/bin/bash
#Login to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 207567793991.dkr.ecr.us-east-1.amazonaws.com
docker build -t myapp ../.
docker tag myapp:latest 207567793991.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
docker push 207567793991.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
