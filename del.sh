#!bin/sh

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -aq)
docker volume rm srcs_db-volume
docker volume rm srcs_wp-volume
docker network prune --force 
docker network rm srcs_inception
