#!/bin/sh
# Getting The Littlest JupyterHub, A simple JupyterHub distribution
# for a small (0-100) number of users on a single server.
# More details at: https://tljh.jupyter.org/
sleep 30
sudo wget https://tljh.jupyter.org/bootstrap.py
sleep 10
while sudo fuser /var/lib/dpkg/lock /var/lib/apt/lists/lock /var/cache/apt/archives/lock >/dev/null 2>&1; do 
	echo 'Waiting for release of dpkg/apt locks'; 
	sleep 5; 
done
sudo python3 bootstrap.py --admin superadmin
