# k8s-blockchain-template

Some notes for deploying a private poa network with geth and Clique in k8s

## Run

### Script

`./start.sh`

### Manually

```
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
```

### Port forward minitor

Monitor page avalailabe in `http://localhost:8080`
</br>
</br>
`kubectl port-forward service/eth-ethstats 8080:80`
