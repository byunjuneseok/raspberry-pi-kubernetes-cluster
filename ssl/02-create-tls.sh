#!/bin/zsh

kubectl create secret tls httpstls --key ingress.key --cert ingress.cert --namespace https
