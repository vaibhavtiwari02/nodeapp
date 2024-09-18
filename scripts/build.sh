version: 0.2

phases:
  build:
    commands:
      - name: Install dependencies
        command: npm install
      - name: Build Docker image
        command: docker build -t 207567793991.dkr.ecr.us-east-1.amazonaws.com/mynodeapp:latest .
      - name: Push Docker image to ECR
        command: docker push 207567793991.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
