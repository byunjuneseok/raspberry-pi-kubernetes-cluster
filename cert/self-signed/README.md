# SSL

## Generate key and cert
```shell
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ingress.key -out ingress.cert
```

## Create TLS
```shell
kubectl create secret tls ssl --key ingress.key --cert ingress.cert --namespace hello-api
```
