#!/bin/sh
curl -i -X DELETE \
  -H "Accept:application/json" \
  -H "Content-Type:application/json" \
  localhost:8083/connectors/$@
