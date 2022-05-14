# raspberry-pi-kubernetes-cluster

## 🚢 Operating kubernetes at home =]

![cluster](/cluster-20220506.jpg)


## To-do

### `argo`
- [x] Install argo-cd
- [x] Create ingress for argo server with HTTP
- [ ] Debug applicationSet controller

### `cert`
- [x] Serve HTTPS endpoint with self-signed certificate
- [x] Install cert-manager
- [x] Create cluster-issuer

### `cni`
- [x] Install flannel
- [x] Uninstall flannel
- [x] Install calico

### `network`
- [x] Install metallb
- [x] Install nginx-ingress

### `storage`
- [x] Create no-provisioner storageClass
- [ ] Research dynamic storageClass for on-premise kubernetes
