pipeline {
 agent { label 'master' }
  triggers {
    githubPush()
  }
    options {
    disableConcurrentBuilds()
    buildDiscarder (logRotator(numToKeepStr: '3', artifactNumToKeepStr: '3'))
     }
  stages {
         stage('Windows') {
		
		steps {
			withCredentials([
            		usernamePassword(credentialsId: 'aws-s3-teststatic', usernameVariable: 'AccessKey', passwordVariable: 'SecretKey')
					]){
				bat 'powershell -file deploy.ps1'
			powershell(''' 
			echo 1
			get-psdrive
				   echo 2
				   echo  '"$env:AccessKey"'
				   echo  AccessKey
				   echo  $env:SecretKey
				   echo $env:WORKSPACE
				   dir $env:WORKSPASE				  
				   echo 3
				  
				   $bucketName = "new.avs4you.com"
				   echo $bucketName
				   ''') 
                      							
	}
      }
    }
  }
}
