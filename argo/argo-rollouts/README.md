# Argo Rollouts
- https://artifacthub.io/packages/helm/argo/argo-rollouts


##
```shell
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
```


## Install
```shell
helm install --namespace deployment argo-rollouts argo/argo-rollouts -f values.yaml
```

## Create Port forward
```shell
kubectl port-forward service/argo-rollouts-dashboard 31000:3100
```
