## Introduction

This repo contains files to spin up a locla Kubernetes cluster and a private registry.

This allows to observe how Kubernetes node pull images and react to label changes.

## Requirements

- docker
- docker-compose

## Instructions

Start kubernetes cluster

```
docker-compose up -d
```

Build and push images into the local private registry

```
docker-compose exec builder sh /src/build.sh
```

Tag image version 2 as `floating-tag` and push in the registry

```
docker-compose exec builder sh /src/tag.sh 2
```

Create deployments
```
docker-compose exec server kubectl apply -f /src/manifests
```


