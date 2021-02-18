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
                                echo first step
							}
						}
					}
				}
				stage('windows') {
					agent { label 'master' }
					stages {
						stage('Components') {
							steps {
								bat 'echo123'
							}
						}
						stage('Common') {
							steps {
								echo 123
							}
						}		
					}
				}
			}
		}
	}
}
