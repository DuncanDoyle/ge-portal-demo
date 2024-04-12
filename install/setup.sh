#!/bin/sh

pushd ../

printf "\nInstalling K8S Services & Deployments ...\n"
kubectl apply -f apis/httpbin.yaml
kubectl apply -f apis/petstore.yaml
kubectl apply -f apis/petstore-v2.yaml
printf "\n"

printf "\nInstalling APIDocs ...\n"
kubectl apply -f apis/httpbin-schema-apidoc.yaml
kubectl apply -f apis/petstore-schema-apidoc.yaml
kubectl apply -f apis/petstore-v2-schema-apidoc.yaml
printf "\n"

printf "\nInstalling API Products ...\n"
kubectl apply -f apis/httpbin-product-apiproduct.yaml
kubectl apply -f apis/petstore-product-apiproduct.yaml
printf "\n"

printf "\nInstalling Portal Environment ...\n"
kubectl apply -f environment/dev-environment.yaml
printf "\n"

printf "\Installing Users and Groups ...\n"
kubectl apply -f users-groups/developers-group-users-secret.yaml
printf "\n"

printf "\Installing Portal ...\n"
kubectl apply -f portal/petstore-portal-portal.yaml
printf "\n"
 

