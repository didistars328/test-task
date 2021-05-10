#!/bin/bash

# Install ansible on target host
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt install ansible -y
# Fetch files from GIT
git clone https://github.com/didistars328/test-task.git
# Now run playbook from CLI. Enjoy! :)