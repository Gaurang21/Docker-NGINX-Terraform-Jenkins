# Docker-NGINX-Terraform-Jenkins

1. Build docker image using Dockerfile. --tag is used to name the docker image.

```
docker build --tag website .
```

2. Port 80 is exposed in the docker file. To run the website in docker image on port 80 use the below command. The website will run on localhost:80

```
docker run --publish 80:80 website
```

3. To run website using docker compose. Docker compose helps to configure all of the application's service dependencies (databases, queues, caches, web service APIs, etc).

```
docker-compose up
```

4. To run the unit-tests service in docker compose use the following command.

```
docker-compose run --rm unit-tests
```
This command will install rspec, capybara and run unit test on the website. It should result output as shown in the below screenshot.

![Screenshot (130)](https://user-images.githubusercontent.com/38041438/118767978-4c6d3380-b833-11eb-85c5-8695bd987955.png)

5. Build and run Terraform

```
docker-compose build terraform
```
```
docker run --rm terraform
```

6. Steps to create s3 Bucket using Terraform. Note: Update AWS_ACCESS_KEY AND AWS_SECRET_ACCESS_KEY in docker-compose.yml file. My keys are disabled so it won't work.

Initialize bucket
```
docker-compose run --rm terraform init
```

Check plan
```
docker-compose run --rm terraform plan
```

Apply changes to S3
```
docker-compose run --rm terraform apply
```
