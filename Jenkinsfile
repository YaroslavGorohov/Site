pipeline {
	agent none
	stages {
		stage('Build') {
			parallel {
				stage('linux') {
					agent { label 'ubuntu' }
					stages {
						stage('Components') {
							steps {
								sh 'sh echo 123'
							}
						}
						stage('Common') {
							steps {
								sh 'sh sh echo 456'
							}
						}
						
							}
						}
					}
				}
	}
