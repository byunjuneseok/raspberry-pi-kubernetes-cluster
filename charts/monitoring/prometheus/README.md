# Prometheus

## Add Helm repository
```shell
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```

## Install
```shell
helm install prometheus-community/kube-prometheus-stack --namespace monitoring --generate-name
```
