# Docker-NGINX-Terraform-Jenkins

1. Build docker image using Dockerfile. --tag is used to name the docker image.

```
docker build --tag website .
```

2. Port 80 is exposed in the docker file. To run the website in docker image on port 80 use the below command. The website will run on localhost:80

```
docker run --publish 80:80 website
```
