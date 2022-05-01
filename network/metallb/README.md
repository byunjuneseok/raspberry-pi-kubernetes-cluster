# metallb
 - https://metallb.universe.tf/
 - https://artifacthub.io/packages/helm/metallb/metallb


## Why `metallb`?
- [NGINX Ingress Controller Bare-metal considerations: A pure software solution: MetalLB](https://kubernetes.github.io/ingress-nginx/deploy/baremetal/)

## Add Helm repository
```shell
helm repo add metallb https://metallb.github.io/metallb
helm repo update
```

## Install
```shell
helm install --namespace metallb metallb metallb/metallb -f values.yaml
```

## Uninstall
```shell
helm uninstall --namespace metallb metallb metallb/metallb
```
