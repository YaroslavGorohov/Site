pipeline {
	        agent none
	        stages {
				    stage('windows') {
					                    agent { label 'master' }
					                    stages {
						                        stage('Components') {
						                                            	steps {
							                                                	withCredentials([
            		                                                                            usernamePassword(credentialsId: 'aws-s3-teststatic', usernameVariable: 'AccessKey', passwordVariable: 'SecretKey')
					                                                                            ]){
															powershell '"\$env:BRANCH_NAME"'
															powershell 'echo 1q'
															powershell 'echo "\$env:BRANCH_NAME"'
															powershell 'echo $env:BRANCH_NAME'
															powershell '$env:BRANCH_NAME'
				                                                                                    bat 'powershell -file deploy.ps1'
			                                                                                        powershell(''' 
			                                                                                      
                                                                                                  			  $bucketName = "new.avs4you.com"
															 echo `git branch`
                                                                                                  			  echo $bucketName
				                                                                                      ''')}
						        	                                            }
						                                             }
						                         stage('Common') {
							                                         steps {
								                                             bat 'echo 133'
							                                               }
						                                           }		
					                              }
				                         }
			        }
		  }     
