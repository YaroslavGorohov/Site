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
															git merge --abort    
															checkout([$class: 'GitSCM', 
    branches: [[name: '*/main']],
    doGenerateSubmoduleConfigurations: false,
    extensions: [
        [$class: 'SparseCheckoutPaths',  sparseCheckoutPaths:[[$class:'SparseCheckoutPath', path:'folder1/']]]
                ],
    submoduleCfg: [],
    userRemoteConfigs: [[
    url: 'https://github.com/YaroslavGorohov/Site.git']]])
															powershell '"$env:BRANCH_NAME"'
															powershell 'echo 12'
			                                                                                        powershell(''' 
			                                                                                      
                                                                                                  			  $bucketName = "new.avs4you.com"															 
															 echo "${env.GIT_BRANCH}"                                                                                                  			
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
