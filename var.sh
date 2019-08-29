#! /bin/bash

export CONSUL_NODE_NAME=$(hostname)

export DOCKER_COMPOSE_TOOLS_PREFIX="tools"
export DOCKER_COMPOSE_TOOLS_RESTART_POLICY="unless-stopped"

export DOCKER_COMPOSE_SERVICES_PREFIX="services"
export DOCKER_COMPOSE_SERVICES_RESTART_POLICY="unless-stopped"

docker login dregistry.devops.moovapps.com
