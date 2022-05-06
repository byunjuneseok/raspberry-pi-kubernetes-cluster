# Cert-manager

## Add repository
```shell
helm repo add jetstack https://charts.jetstack.io
```

## Install
```shell
helm install --namespace cert-manager cert-manager jetstack/cert-manager
```

## Helm install is not working...
- https://cert-manager.io/docs/installation/verify/#manual-verification

```shell
kubectl apply --validate=false -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.0/cert-manager.yaml
```

