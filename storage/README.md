# Configure NFS server


## Install
```shell
apt install nfs-kernel-server
mkdir /mnt/nfs

chown nobody:nogroup /mnt/nfs
chmod 777 /mnt/nfs
```

### `vim /etc/exports`
```shell
vim /etc/exports
```

```
/mnt/nfs    192.168.24.0/24(rw,sync,no_subtree_check,no_root_squash)
```

### Make the NFS share available to the subnet
```shell
exportfs -a
systemctl restart nfs-kernel-server
systemctl status nfs-kernel-server
```

## Install nfs-common to all nodes
```shell
apt install nfs-common -y
```


## Add Helm repository
```shell
helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
```

## Configure NFS Subdir External Provisioner
```shell
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --namespace nfs \
    --set nfs.server=192.168.24.125 \
    --set nfs.path=/data/nfs1 \
    --set storageClass.onDelete=true \
    --set storageClass.defaultClass=true
```


## Check storage is default
```shell
$ kubectl get storageclass

NAME                   PROVISIONER                                     RECLAIMPOLICY   VOLUMEBINDINGMODE   ALLOWVOLUMEEXPANSION   AGE
nfs-client (default)   cluster.local/nfs-subdir-external-provisioner   Delete          Immediate           true                   11s
```
