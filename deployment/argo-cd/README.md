# Argo CD
- https://artifacthub.io/packages/helm/argo/argo-cd


##
```shell
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
```


## Install
```shell
helm install --namespace deployment argocd argo/argo-cd -f values.yaml
```

## Upgrade
```shell
helm upgrade --namespace deployment argocd argo/argo-cd -f values.yaml
```

## Create port-forward
```shell
kubectl port-forward service/argocd-server -n deployment 8080:443
```

## Get the initial password
```shell
kubectl --namespace deployment get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo
```

