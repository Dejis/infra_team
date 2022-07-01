The project for Infra Team is the installation of EFK stack with data retention policy one day on Kubernetes (minikube) cluster via Terraform. 

##Implementation

This project is implemented via Terraform.

#Brief:

 EFK stands for Elasticsearch, Fluentd, and Kibana. EFK is a popular and the best open-source choice for the Kubernetes log aggregation and analysis. Elasticsearch is a distributed and scalable search engine commonly used to sift through large volumes of log data

 ###

 Terraform automation can also be used for k8s automation in minikube


###Prerequisites:

Install minikube 
Install kubectl
Install Terraform CLI.

######Steps to automate k8s deployment in minikube via Terraform#######

Step1: Start minikube
image.png


Step2: Create Terraform code
providers.tf
This file contains terraform hashicorp provider modules use to automate in required_providers section.
The provider section declares the kube config file path and (minikube) context used for automation.

###Setup EFK Stack on Kubernetes

image.png

git clone https://github.com/scriptcamp/kubernetes-efk

Save the following manifest as es-svc.yaml

#Create it with below command:

kubectl create -f es-svc.yaml

Deploy Elasticsearch Statefulset


Deploy Kibana Deployment & Service
Deploy Fluentd Kubernetes Manifests



###



