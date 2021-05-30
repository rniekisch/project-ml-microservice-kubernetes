#!/usr/bin/env bash

# This runs an image in a kubernetes cluster

# Step 1:
# This is your Docker ID/path
dockerpath="rniekisch/udacity_dev_ops:api"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run api\
    --image=$dockerpath\
    --port=80 --labels app=project5

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl wait --for=condition=ready pod -l app=project5 
kubectl port-forward api 8000:80
