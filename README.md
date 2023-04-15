[![CircleCI](https://dl.circleci.com/status-badge/img/gh/avneeshverma1234/udacitymachinelearningsubmission/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/avneeshverma1234/udacitymachinelearningsubmission/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

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