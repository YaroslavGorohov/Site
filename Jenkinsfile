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
				                                                                                    bat 'powershell -file deploy.ps1'
			                                                                                        powershell(''' 
			                                                                                      
                                                                                                  			  $bucketName = "new.avs4you.com"
															  git rev-parse --abbrev-ref HEAD
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
