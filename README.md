[![CircleCI](https://app.circleci.com/pipelines/github/contagion1/DevOps_Microservices?branch=master.svg?style=svg)](https://app.circleci.com/pipelines/github/contagion1/DevOps_Microservices/20/workflows/ce7ca443-9698-4058-802e-e841c3547643)

## Project Overview

This project operationalizes a Machine Learning Microservice API. 

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.A good use case would be image recognition models in tensorflow

### Project Tasks

* Test project code using linting
* Complete Dockerfile to containerize the application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
### Docker installation:
* install docker desktop from https://docs.docker.com/engine/install/
*Optionally on windows install WSL 2.0 using steps here: https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers
*run the script below:
2. Run in Docker:  `./run_docker.sh`
*Push image to dockerhub :./upload_docker.sh 
Finally make a prediction;run:make_prediction.sh

### Kubernetes Steps

## Setup and Configure Kubernetes locally:
*install vbox hypervisor: sudo apt install virtualbox virtualbox-ext-packCopied!
*wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
*optionally check version: minikube version
*install kubectl curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
*On window follow instructions at: https://minikube.sigs.k8s.io/docs/start/
* Run via kubectl as below:
3. Run in Kubernetes:  `./run_kubernetes.sh`

*make prediction: ./make_prediction.sh