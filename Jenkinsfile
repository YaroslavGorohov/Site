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
