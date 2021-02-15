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
            		usernamePassword(credentialsId: 'aws-s3-teststatic', usernameVariable: 'AccessKey', passwordVariable: 'SecretKey')
					]){
				bat 'powershell -file deploy.ps1'
			powershell(''' 
			get-psdrive
				   echo 1
				   echo  $env:AccessKey
				   echo  AccessKey
				   echo  $env:SecretKey
				   echo  SecretKey
				   echo $env:WORKSPACE
				   dir $env:WORKSPASE				  
				   echo 2
				  
				   $bucketName = "new.avs4you.com"
				   echo $bucketName
				   ''') 
                      							
	}
      }
    }
  }
}
