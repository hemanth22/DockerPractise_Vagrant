#!/bin/bash
echo "Hostinfo in Manage node."
echo "======================"
vagrant ssh manager -c "docker --version"
vagrant ssh manager -c "ifconfig -a | grep inet"
echo "Hostinfo in Worker node."
echo "======================"
vagrant ssh worker -c "docker --version"
vagrant ssh worker -c "ifconfig -a | grep inet"
echo "Completed Lising basic information."
echo "======================"
echo "Downloading the project" | figlet
vagrant ssh manager -c "git clone https://github.com/hemanth22/Oracle_database.git"
echo "Download completed." | figlet
echo "Downloading oracle database images from docker cloud"
docker pull sath89/oracle-12c:latest
echo "Downloading complete"
echo "Downloading JSP images from docker cloud"
docker pull bitroid/jsp-db-docker:latest
echo "Downloading complete"
echo "Process with you manual testing from here this is script is not automated for further purpose"
echo "End of Tester script."
echo "Use docker swarm init"
echo "Use docker join-worker"
