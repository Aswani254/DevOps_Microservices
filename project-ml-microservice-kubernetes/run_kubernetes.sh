#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=solo254/microservices_project

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment hello-minikube --image=https://hub.docker.com/repository/docker/solo254/ap1
kubectl expose deployment hello-minikube --type=NodePort --port=8080

# Step 3:
# List kubernetes pods
kubectl get services hello-minikube

# Step 4:
# Forward the container port to a host
kubectl port-forward service/hello-minikube 8000:80