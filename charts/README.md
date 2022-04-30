# Helm
> The package manager for Kubernetes
- https://helm.sh/


## Install
```shell
brew install helm
```

## Port-forwarding
for example,
```shell
kubectl port-forward $(kubectl get pods --selector "app.kubernetes.io/name=traefik" --output=name) 9000:9000
```
