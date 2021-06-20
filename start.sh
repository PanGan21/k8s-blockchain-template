#!/usr/bin/env bash

kubectl create -f ./bootnode/bootnode-srv.yaml
kubectl create -f ./bootnode/bootnode-dpl.yaml

kubectl create -f ./registrar/bootnode-registrar-srv.yaml
kubectl create -f ./registrar/bootnode-registrar-dpl.yaml

kubectl create -f ./dashboard/ethstats-srv.yaml
kubectl create -f ./dashboard/ethstats-secret.yaml
kubectl create -f ./dashboard/ethstats-dpl.yaml
kubectl create -f ./dashboard/ethstats-ingress.yaml

kubectl create configmap eth-geth --from-file=genesis/

kubectl create -f ./geth/geth-miner-secret.yaml
kubectl create -f ./geth/geth-miner-dpl.yaml

kubectl apply -f ./tx/geth-tx-srv.yaml
kubectl apply -f ./tx/geth-tx-dpl.yaml
