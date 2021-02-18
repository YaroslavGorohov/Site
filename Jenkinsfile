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
			                                echo 1
			                                get-psdrive
				                            echo 2
				                            echo  '"$env:AccessKey"'
				                            echo  AccessKey
				                            echo  $env:SecretKey
				                            echo $env:WORKSPACE
				                            dir $env:WORKSPASE				  
				                            echo 3
							    echo $env:GIT_BRANCH
				                            $bucketName = "new.avs4you.com"
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
	            }
            }
}
