pipeline
{
agent {
        docker { 
        // reuseNode so it doesn't checkout again
        reuseNode true
        image 'cornelf/docker-build:slim' 
        args '-v /var/run/docker.sock:/var/run/docker.sock --group-add root'
               }
      }
stages {
  stage('Test') {
     steps {
             sh 'echo "hello"'
           }
                }  
  stage('Build docker image') {
     steps {
            sh 'docker build -t test .'
           }                         
                              }
  stage ('Push it') {
    steps {
    withCredentials([usernamePassword(credentialsId: 'DockerHub', Cakesolutions1102:'dockerHubPassword', cristinaneacsudocker: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker tag test cristinaneacsudocker/dockerjenkins2:testpush'
          sh 'docker push cristinaneacsudocker/dockerjenkins2:testpush'
    }

          }
                   }
}
}       
