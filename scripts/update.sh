#!/bin/sh
# Update
sudo add-apt-repository universe -y && sudo apt-get update -y && sudo apt-get install build-essential libssl-dev libffi-dev python3-dev software-properties-common python3-pip python3-venv -y && sudo pip3 install virtualenv 
