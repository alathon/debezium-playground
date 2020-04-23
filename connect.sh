#!/bin/sh
docker run -it --rm --name connect \
  -p 8083:8083 \
  -e GROUP_ID=1 \
  -e CONFIG_STORAGE_TOPIC=my_connect_configs \
  -e OFFSET_STORAGE_TOPIC=my_connect_offsets \
  -e STATUS_STORAGE_TOPIC=my_connect_statuses \
  -e KEY_CONVERTER=io.confluent.connect.avro.AvroConverter \
  -e VALUE_CONVERTER=io.confluent.connect.avro.AvroConverter \
  -e INTERNAL_KEY_CONVERTER=org.apache.kafka.connect.json.JsonConverter \
  -e INTERNAL_VALUE_CONVERTER=org.apache.kafka.connect.json.JsonConverter \
  -e CONNECT_KEY_CONVERTER_SCHEMA_REGISTRY_URL=http://schema-registry:8181 \
  -e CONNECT_VALUE_CONVERTER_SCHEMA_REGISTRY_URL=http://schema-registry:8181 \
  --link zookeeper:zookeeper \
  --link kafka:kafka \
  --link postgres:postgres \
  --link schema-registry:schema-registry \
  debezium/connect:1.1
