#!/bin/bash

# Install ansible on target host
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt install ansible
# Fetch files from GIT
git clone https://github.com/didistars328/test-task.git
# Now run playbook from CLI. Enjoy! :)