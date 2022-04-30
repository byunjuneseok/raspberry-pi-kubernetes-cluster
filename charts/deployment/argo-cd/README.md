# Argo CD
- https://artifacthub.io/packages/helm/argo/argo-cd?modal=values


##
```shell
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
```


## Install
```shell
helm install --namespace deployment argocd argo/argo-cd -f values.yaml
```
