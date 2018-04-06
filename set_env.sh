#!/bin/bash

touch .env

echo "DB_HOST=$(echo $VCAP_SERVICES | jq -r '.["user-provided"] | .[].credentials.hostname')" >> .env
echo "DB_PORT=$(echo $VCAP_SERVICES | jq -r '.["user-provided"] | .[].credentials.port')" >> .env
echo "DB_DATABASE=$(echo $VCAP_SERVICES | jq -r '.["user-provided"] | .[].credentials.name')" >> .env
echo "DB_USERNAME=$(echo $VCAP_SERVICES | jq -r '.["user-provided"] | .[].credentials.username')" >> .env
echo "DB_PASSWORD=$(echo $VCAP_SERVICES | jq -r '.["user-provided"] | .[].credentials.password')" >> .env
