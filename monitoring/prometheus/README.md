# Prometheus

## Add Helm repository
```shell
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```

## Install
```shell
helm install --namespace monitoring kube-prometheus-stack prometheus-community/kube-prometheus-stack -f values.yaml
```


## Upgrade
```shell
helm upgrade --namespace monitoring kube-prometheus-stack prometheus-community/kube-prometheus-stack -f values.yaml
```
