pipeline {
  triggers {
    githubPush()
  }
  agent {
    label 'net-core'
  }
  options {
    disableConcurrentBuilds()
    buildDiscarder (logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
  }
  stages {
    stage("First step") {
      steps {
        sh 'hostname'
        sh 'pwd'
        sh 'uname -a'
        sh 'echo "123456"'
      }
    }
  }
}  
