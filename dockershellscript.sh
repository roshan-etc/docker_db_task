#!/bin/bash

docker images
docker ps -a 

echo 'Stopping running containers (if available)...'
docker stop $(docker ps -aq)

echo 'Removing containers ..'
docker rm $(docker ps -aq)

echo 'Removing images ...'
docker rmi $(docker images -q)

