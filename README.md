[![<ORG_NAME>](https://circleci.com/gh/rniekisch/project-ml-microservice-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/rniekisch/project-ml-microservice-kubernetes)

## Project Overview

This Repository contains the solution of the "Operationalize a Machine Learning Microservice API" project of the udacity "Cloud DevOps Engineer" nanodegree course. It is based on the course material found at https://github.com/udacity/DevOps_Microservices.

The project goal is to operationalize a working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. 

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

```
$ python3 -m venv .devops
$ source .devops/bin/activate
$ make install
```

### Running `app.py`

There are several options for using this service.

#### Call the app directly (standalone)
```
python app.py
```

#### Containerize the app and run it
```
./run_docker.sh
```

To call the service see [Get a prediction](#pred)

#### Run the service on a kubernetes cluster

Upload the container to docker hub
```
./upload_docker.sh
```

Run the container in a Kubernetes cluster. The container uploaded to the docker hub is used.
```
./run_kubernetes.sh
```

To call the service see [Get a prediction](#pred)

### <a name="pred"></a> Get a prediction

To get a prediction send a HTTP POST request to the endpoint `http://localhost:80/predict`.

You can also use the script `make_prediction.sh`, which also serves as an example for a valid HTTP POST request.
