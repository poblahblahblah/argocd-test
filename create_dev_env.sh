#!/bin/bash

kind create cluster --config kind_config.yaml
kubectl create namespace argocd
kubectl create namespace production
kubectl -n argocd apply -f install.yaml
kubectl -n argocd apply -f install-applicationset.yaml
