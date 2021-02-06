docker rm -f $(docker ps -q)
docker rmi -f $(docker images -q)