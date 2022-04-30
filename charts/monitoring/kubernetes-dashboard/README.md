# Kubernetes-dashboard

## Add Helm repository
```shell
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
```

## Install
```shell
helm install kubernetes-dashboard/kubernetes-dashboard --namespace monitoring --generate-name
```

## Access the dashboard
```shell
export POD_NAME=$(kubectl get pods -n monitoring -l "app.kubernetes.io/name=kubernetes-dashboard,app.kubernetes.io/instance=kubernetes-dashboard-1651314062" -o jsonpath="{.items[0].metadata.name}")
echo https://127.0.0.1:8443/
kubectl -n monitoring port-forward $POD_NAME 8443:8443
```

### Allow invalid certificates for resources loaded from localhost
```
chrome://flags/#allow-insecure-localhost
```
