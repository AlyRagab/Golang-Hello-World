#!groovy
pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image "maven:3.5.0"
        }
      }
      steps {
        sh "mvn clean package"
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh "docker build -t hello-world:latest-1 ."
      }
    }
   stage ('Run Application'){
     steps {
       sh " docker rm -f hello "
       sh " docker run -d --name hello -h hello --network=gonet -p 8080:8080 hello-world:latest-1 "
     }
    }
   stage (' Test Container'){
      sh " docker ps -a | grep hello "
   }
  }
}
