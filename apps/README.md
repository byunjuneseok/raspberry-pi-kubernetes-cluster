# Apps


## At local
```shell
aws ecr get-login-password --region ap-northeast-2 --profile ... | docker login --username AWS --password-stdin <ID>.dkr.ecr.<AWS-REGIOn>.amazonaws.com/<REPOSITORY-NAME>
```

## Add permission to ECR
```shell
aws ecr get-login-password --region ap-northeast-2 --profile ...

kubectl create secret docker-registry regcred --docker-server=<ID>.dkr.ecr.<AWS-REGION>.amazonaws.com --docker-username=AWS --docker-password=<PASSWORD-GENERATED> --docker-email=<AWS-ACCOUNT-EMAIL>
```

