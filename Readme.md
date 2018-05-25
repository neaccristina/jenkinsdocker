Jenkins pipeline, building a docker image and publishing it to DockerHub

Image: @cristinaneacsudocker/dockerjenkins based on jenkins/jenkins:lts-slim and with Docker installed

Container:
docker run -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home --group-add root cristinaneacsudocker/dockerjenkins:test3

Agent based on image @cornelf/docker-build:slim
