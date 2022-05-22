# Jenkins


## Add Repository
```shell
helm repo add jenkins https://charts.jenkins.io
helm repo update
helm show values jenkins/jenkins > default-values.yaml
```

## Install
```shell
helm install jenkins jenkins/jenkins -f values.yaml -n jenkins
```

