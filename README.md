Learning about Kubernetes. Trying to deploy a fastapi app using kubernetes. This repo will provide me as space to take notes and experiment.


I'm using this tutorial right now and trying to deploy more apps using Kubernetes. Gotta start somewhere!


https://sumanta9090.medium.com/deploying-a-fastapi-application-on-kubernetes-a-step-by-step-guide-for-production-d74faac4ca36


Commands to check if you have docker, kubernetes, minikube installed.

docker --version

kubectl version --client

minikube version


I don't have minikube so will have to install with: winget install Kubernetes.minikube



First step from the tutorial is to wrap the app and the environment in a self-contained image.




docker build -t <dockerhub_username>/<image_name>:<tag> .


This how to build the dockerimage. I have a docker hub account so I will use my username. I will name it fastapik8s:v1 for version 1 and the . means to use current directory's dockerfile.



