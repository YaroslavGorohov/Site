pipeline {
  triggers {
    githubPush()
  }
  agent {
    label 'ubuntu'
  }
  options {
    disableConcurrentBuilds()
    buildDiscarder (logRotator(numToKeepStr: '3', artifactNumToKeepStr: '3'))
  }
  stages {
    stage("First step") {
      steps {
        sh 'uname -a'
      }
    }
  }
}    
