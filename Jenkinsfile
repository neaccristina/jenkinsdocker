pipeline
{
  agent {
          docker { 
          // reuseNode so it doesn't checkout again
          reuseNode true
          image 'cornelf/docker-build:slim' 
          args '-v /var/run/docker.sock:/var/run/docker.sock --group-add root'
          registryUrl 'https://index.docker.io/v1/'
          registryCredentialsId 'DockerHub'
          }
  }
  stages {
    stage('Test it') {
      steps {
          sh 'echo "hello"'
      }
    }  
    stage('Build docker and push docker image') {
      steps {
          sh 'docker build -t cristinaneacsudocker/dockerjenkins2:testpush .'
          sh 'docker push cristinaneacsudocker/dockerjenkins2:testpush'
      }                         
    }
  }
}
       