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
								sh 'echo Components'
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
								bat 'echo win'
							}
						}
						stage('People') {
							steps {
								bat 'echo win2'
							}
						}
					}
				}
			}
		}
		
