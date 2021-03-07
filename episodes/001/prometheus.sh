#!/bin/bash

# prometheus
#helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
#helm repo add stable https://charts.helm.sh/stable
#helm repo update

#helm install prometheus prometheus-community/prometheus
#kubectl edit service prometheus-server

# grafana
kubectl create deployment grafana --image=docker.io/grafana/grafana:5.4.3
kubectl expose deployment grafana --type=NodePort --target-port=3000 --protocol=TCP --port 80

