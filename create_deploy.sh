#!/bin/bash

kubectl apply -f kubernetes/backend-deployment.yaml
sleep 10
kubectl apply -f kubernetes/frontend-deployment.yaml