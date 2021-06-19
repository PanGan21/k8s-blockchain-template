kubectl create -f ./bootnode/bootnode-srv.yaml
kubectl create -f ./bootnode/bootnode-dpl.yaml

kubectl create -f ./registrar/bootnode-registrar-srv.yaml
kubectl create -f ./registrar/bootnode-registrar-dpl.yaml

kubectl create -f ./dashboard/ethstats-srv.yaml
kubectl create -f ./dashboard/ethstats-secret.yaml
kubectl create -f ./dashboard/ethstats-dpl.yaml
kubectl create -f ./dashboard/ethstats-ingress.yaml

kubectl create -f ./geth/geth-configmap.yaml
kubectl create -f ./geth/geth-miner-secret.yaml
