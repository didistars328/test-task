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