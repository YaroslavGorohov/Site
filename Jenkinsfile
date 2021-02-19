pipeline {
	   agent none
	   stages {
		   stage('windows') {
				     agent { label 'master' }
					                    stages {
						                        stage('Components') {
						                                            	steps {
							                                                	powershell "\$env:BRANCH_NAME"
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
