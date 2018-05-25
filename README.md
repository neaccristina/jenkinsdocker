**Jenkins pipeline, building a docker image and publishing it to DockerHub**

Image: [cristinaneacsudocker/dockerjenkins](https://hub.docker.com/r/cristinaneacsudocker/dockerjenkins/tags/) based on jenkins/jenkins:lts-slim and with Docker installed

Spin up Jenkins container:
`docker run -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home --group-add root cristinaneacsudocker/dockerjenkins:test4`

Agent based on Image: [cornelf/docker-build:slim](https://hub.docker.com/r/cornelf/docker-build/tags/)

