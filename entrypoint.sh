#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p $INPUT_HOST_PORT:5672 -e RABBITMQ_DEFAULT_USER=$INPUT_RABBITMQ_USER -e RABBITMQ_DEFAULT_PASS=$INPUT_RABBITMQ_PASSWORD -e RABBITMQ_DEFAULT_VHOST=$INPUT_RABBITMQ_VHOST heidiks/rabbitmq-delayed-message-exchange:$INPUT_RABBITMQ_VERSION"

sh -c "$docker_run"