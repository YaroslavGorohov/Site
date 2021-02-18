pipeline {
	agent none
	stages {
		stage('Build') {
			parallel {
				stage('Unix') {
					agent { label 'ubuntu' }
					stages {
						stage('Components') {
							steps {
								sh 'echo 123'
							}
						}
					}
				}
				stage('windows') {
					agent { label 'master' }
					stages {
						stage('Components') {
							steps {
								bat 'echo 123'
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
