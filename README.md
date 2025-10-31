Learning about Kubernetes. Trying to deploy a fastapi app using kubernetes. This repo will provide me a space to take notes and experiment.


I'm using this tutorial right now and trying to deploy more apps using Kubernetes. Gotta start somewhere!


https://sumanta9090.medium.com/deploying-a-fastapi-application-on-kubernetes-a-step-by-step-guide-for-production-d74faac4ca36


Commands to check if you have docker, kubernetes, minikube installed.

docker --version

kubectl version --client

minikube version


I don't have minikube so will have to install with: winget install Kubernetes.minikube



First step from the tutorial is to wrap the app and the environment in a self-contained image.




docker build -t <dockerhub_username>/<image_name>:<tag> .


This how to build the dockerimage. I have a docker hub account so I will use my username. I will name it fastapik8s:latest and the . means to use current directory's dockerfile.



So port 80 means that the container will listen at port 80.

But when we run the docker container to test it. 


docker run -p 8080:80 <hubname>/<image name>

-p flag means publish a port
8080 means the host machine port
80 port inside the container the app is listening to. Connects the port 8080 to 80 for the app.

<img width="498" height="326" alt="image" src="https://github.com/user-attachments/assets/92afde88-7ee4-43d4-9a4e-3fcf5334a963" />


<img width="936" height="648" alt="image" src="https://github.com/user-attachments/assets/e8b30e16-8aa7-470a-a405-8c61a257b3eb" />


<img width="1172" height="53" alt="image" src="https://github.com/user-attachments/assets/f8fdfbd0-a6dd-49f1-b919-5a7fd9105e09" />


<img width="542" height="76" alt="image" src="https://github.com/user-attachments/assets/30166943-7c6d-4e1a-93c9-fc35253d0c63" />



Run docker stop with the container name to stop.



I had problems with running minikube so I had to do:

minikube stop

minikube delete

minikube start --driver=docker



--driver=docker means that you are creating a k8s cluster inside a docker container which the cluster will then run more docker containers. Mind blown.



<img width="463" height="121" alt="image" src="https://github.com/user-attachments/assets/143f0a66-8be8-4d15-abe7-d60402f92b69" />


Apparently, when running in minikube you don't have to set resources. But if you run in a real cluster you will have to set the CPU and memory.

So there will be two different types of yaml files: one is deployment used to deploy the pods. The other is service used to expose the pods.

<img width="521" height="199" alt="image" src="https://github.com/user-attachments/assets/41596f74-2b5d-4698-b0fd-ecadf876721e" />

<img width="1467" height="880" alt="image" src="https://github.com/user-attachments/assets/c1c2f767-6740-48f7-a7b7-0a1e7c1286d9" />


Still a lot to learn but I think this is good enough for this project. It provided me with the basics.



