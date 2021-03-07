#!/bin/bash

kubectl create secret generic octant-kubeconfig --from-file=admin.conf=<path to kubeconfig file> -n kube-system
