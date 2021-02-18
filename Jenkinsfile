pipeline {
	agent none
	stages {
		stage('first') {
			parallel {
				stage('Unix') {
					agent { label 'ubuntu' }
					stages {
						stage('Components') {
							steps {
								sh 'echo Components'
							}
						}
						stage('People') {
							steps {
								echo hostname
							}
						}
					}
				}
			}
		}
		
		
			
				stage('Windows') {
					agent { label 'master' }
					stages {
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
						stage('Client') {
							steps {
								bat 'powershell -file deploy.ps1'
							}
						}
						stage('People') {
							steps {
								echo people
							}
						}
					}
				}
			}
		}
}
