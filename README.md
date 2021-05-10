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
3. Account name and Password for Docker should be entered with *ansible-playbook -e docker_user=XXXXX -e docker_password=XXXX* parameters