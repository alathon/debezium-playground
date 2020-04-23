#!/bin/sh
docker run -it --rm --name schema-registry \
    --link zookeeper \
    -e SCHEMA_REGISTRY_KAFKASTORE_CONNECTION_URL=zookeeper:2181 \
    -e SCHEMA_REGISTRY_HOST_NAME=schemaregistry \
    -e SCHEMA_REGISTRY_LISTENERS=http://0.0.0.0:8181 \
    -p 8181:8181 confluentinc/cp-schema-registry
