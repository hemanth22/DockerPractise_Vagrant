#!/bin/bash
echo "Vagrant up with provision" | figlet
vagrant up
echo "Vagrant up and running" | figlet
echo "Reboot" | figlet
vagrant reload
echo "Reboot Completed" | figlet
echo "Initializing testing" | figlet
./tester.sh
