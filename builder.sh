#!/bin/bash
docker logs --timestamps $(docker ps -aq)
sleep 500
docker logs --timestamps $(docker ps -aq)
docker stack ls
docker exec -it --user root $(docker ps -aq) /bin/bash -c "apt-get update;apt-get -y install git"
docker exec -it --user root $(docker ps -aq) /bin/bash -c "git clone https://github.com/hemanth22/Oracle_database.git"
docker exec -it --user root $(docker ps -aq) /bin/bash -c "chmod -R 777 Oracle_database;cd /Oracle_database;ls -la"
docker exec -it --user oracle $(docker ps -aq) /bin/bash -c "netstat -nlpt"
docker exec -it --user oracle $(docker ps -aq) /bin/bash -c "ls && cd Oracle_database && ls && bash login.sh"
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -aq)
