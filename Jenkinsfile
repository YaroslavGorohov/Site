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
        withCredentials([
        usernamePassword(credentialsId: 'aws-s3-teststatic', usernameVariable: 'AccessKey', passwordVariable: 'SecretKey')
					              ]){													
				checkout([$class: 'GitSCM', 
        branches: [[name: '*/unix']],
        doGenerateSubmoduleConfigurations: false,
        extensions: [
        [$class: 'SparseCheckoutPaths', sparseCheckoutPaths: [[path: 'folder1/'], [path: 'deploy.bat']]]
                ],
        submoduleCfg: [],
        userRemoteConfigs: [[
        url: 'https://github.com/YaroslavGorohov/Site.git']]])
        sh 'aws s3api list-objects --bucket test-scripts-update  --profile sh_update'
        sh 'ls -l'
        sh 'uname -a'
	sh 'ls -la'
		
      }
    }
  }
 }  
}
