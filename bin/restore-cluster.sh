#!/bin/bash
set -e

kubectl apply -f .tekton/tasks.yml
kubectl apply -f .tekton/flake8.yml
kubectl apply -f .tekton/pvc.yml
kubectl apply -f .tekton/pipeline.yml

echo "OpenShift resources restored!"
kubectl get tasks
kubectl get pvc
kubectl get pipelines
