#!/bin/sh
curl -i -X PUT \
  -H "Accept:application/json" \
  -H "Content-Type:application/json" \
  localhost:8083/connector-plugins/PostgresConnector/config/validate \
  -d '{ "name": "inventory-connector", "config": { "connector.class": "io.debezium.connector.postgresql.PostgresConnector", "database.hostname": "postgres", "database.port": "5432", "database.user": "postgres", "database.password": "postgres", "database.dbname" : "postgres", "database.server.name": "fullfillment", "table.whitelist": "public.inventory" } }'
