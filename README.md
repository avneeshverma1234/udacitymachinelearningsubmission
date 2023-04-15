[![CircleCI](https://dl.circleci.com/status-badge/img/gh/avneeshverma1234/udacitymachinelearningsubmission/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/avneeshverma1234/udacitymachinelearningsubmission/tree/main)

## Project Overview

This project contains a Machine Learning Microservice Flask sample application code and model data, as well as a Makefile, Dockerfile and shell scripts to dockerize and run the Docker image on a Kubernetes cluster.

Requirements:
* Python 3.7
* Docker Desktop 
* Minikube 
* hadolint 
---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m venv ./venv
source ./venv/bin/acivate
```

## Key commands and scripts
```bash
# Create Python virtual environment (in venv folder)
make setup

# Install Python dependencies (run on Python virtual environment)
./venv/bin/acivate
make install

# Run static code analysis (run on Python virtual environment)
make lint

# Run the Python app on local Python virtual environment
python app.py

# Build Docker image and run local container
./run_docker.sh

# Upload Docker image to DockerHub
./upload_docker.sh

# Run Docker image on Kubernetes cluster
./run_kubernetes.sh

```

## Key files list
| File  | Description |
| ------------- | ------------- |
| `.circleci`  | CircleCI configuration folder  |
| `Dockerfile`  | Docker build file  |
| `Makefile`  | make utility file |
| `app.py`  | Machine Learning Microservice API Python application |
| `make_prediction.sh`  | Linux bash script to trigger a prediction via the application API |
| `model_data`  | Machine learning application model data folder |
| `requirements.txt`  | Python dependencies file |
| `run_docker.sh`  | Linux bash script to build Docker image and run local container |
| `run_kubernetes.sh`  | Linux bash script to run Docker image on Kubernetes cluster |
| `upload_docker.sh`  | Linux bash script to upload Docker image to DockerHub |