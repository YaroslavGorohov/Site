pipeline {
 agent { label 'master' }
  triggers {
    githubPush()
  }
    options {
    disableConcurrentBuilds()
    buildDiscarder (logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
     }
  stages {
         stage('Windows') {
		
		steps {
			withCredentials([
            		usernamePassword(credentialsId: '4testing', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')
					]){
			powershell(''' 
			get-psdrive
				   echo $WORKSPACE
				   $bucketName = "new.avs4you.com"
				   echo $bucketName
				   ''') 
                      							
	}
      }
    }
  }
}
