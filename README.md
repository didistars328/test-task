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
  
Sample output
```
root@ubuntu-s-1vcpu-1gb-fra1-01:~/test-task# curl 167.172.184.145
Hello World
root@ubuntu-s-1vcpu-1gb-fra1-01:~/test-task# curl 167.172.184.145/auth
<html>
<head><title>401 Authorization Required</title></head>
<body bgcolor="white">
<center><h1>401 Authorization Required</h1></center>
<hr><center>nginx/1.14.0 (Ubuntu)</center>
</body>
</html>
root@ubuntu-s-1vcpu-1gb-fra1-01:~/test-task# curl -u admin:admin123 167.172.184.145/auth
<html>
<head><title>301 Moved Permanently</title></head>
<body bgcolor="white">
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.14.0 (Ubuntu)</center>
</body>
</html>
```