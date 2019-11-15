#!/usr/bin/env bash

APP_CONTAINER=$(docker-compose ps -q app_server)

docker exec -i ${APP_CONTAINER} /bin/sh -c 'chown -Rf application:application /app'
docker exec -i ${APP_CONTAINER} /bin/sh -c 'chmod -R 0750 /app'
docker exec -i ${APP_CONTAINER} /bin/sh -c 'chown -Rf application:application /.npm'
docker exec -i ${APP_CONTAINER} /bin/sh -c 'chmod -R 0750 /.npm'
docker exec -i ${APP_CONTAINER} /bin/sh -c 'chown -Rf application:application /.composer'
docker exec -i ${APP_CONTAINER} /bin/sh -c 'chmod -R 0750 /.composer'
