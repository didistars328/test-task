**What should be performed:**
1. Create a Project on github/gitlab which would have Dockerfile for nginx.
   It should contain two locations:
    / - “Hello World”; 
    /auth - “Hello World $USERNAME” with base authorisation
   
2. Add any CI/CD tool to existing project and tune it to push the image into DockerHub
   example: travis ci, shippable, gitlab-ci
   NOTE: THIS PROJECT USES GitHub Actions (push to the master)

3. Write an ansible-playbook for installing and configuring server with Docker.
   Deploy existing Docker image (following ansible best practice)
   
Assumptions:
1. Implies that Ubuntu should be as a running platform for docker
2. Password for basic auth is hardcoded for simplicity
3. pip install docker-py was performed on Localhost to be compatible with Ansible docker module 
ENV:
For test there was used an Instance in Digital Ocean:
- Ubuntu 20.04
  1 GB / 1 CPU
  25 GB SSD