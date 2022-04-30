# nginx-ingress
 - https://kubernetes.github.io/ingress-nginx/

## Add Helm repository
```shell
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
```

## Install
```shell
helm install --namespace ingress nginx-ingress nginx-stable/nginx-ingress -f values.yaml
```
