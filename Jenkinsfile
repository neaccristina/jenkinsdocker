pipeline
{
agent {
        docker { 
        // reuseNode so it doesn't checkout again
        reuseNode true
        image 'cornelf/docker-build:slim' 
        args '-v /var/run/docker.sock:/var/run/docker.sock'
               }
      }
stages {
  stage('Test') {
     steps {
             sh 'echo "hello"'
           }
                }  
  stage('Build docker image') {
  agent any
     steps {
            sh 'docker build -t cristinaneacsudocker/linux_tweet_app:1.0 .'
           }                         
                              }
       }
}       
