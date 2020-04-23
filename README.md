# Intro

This repo follows [this tutorial](https://debezium.io/documentation/reference/1.1/tutorial.html#starting-mysql-database)
but uses PostgreSQL instead of MySQL.

# Boot up services

1. Run `./zookeeper.sh`
1. Run `./kafka.sh`
1. Run `./postgres.sh`
1. Run `./connect.sh`
1. Keep all of these tabs/windows open

# Register Debezium Connector

1. Run `./register-connector.sh` to register the inventory-connector
1. Observe in Kafka Connects logs that it registers the connector and immediately snapshots things.
1. If you want to delete the connector, use `./delete-connector.sh inventory-connector`
1. If you want to list Kafka topics, use `./list-topics.sh`
1. If you want to watch a Kafka topic (from beginning), use `./watch-topic.sh topic-name-here`.

# TODO:

1. Add `./registry.sh` to run Avro Schema Registry
1. Modify Kafka Connect appropriately to use the Avro Schema Registry
1. Modify the Connector being registered to use Avro serialization/deserialization
