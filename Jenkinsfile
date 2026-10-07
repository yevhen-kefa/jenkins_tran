pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/yevhen-kefa/jenkins_tran.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Compilation...'
                sh 'make'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'make test'
            }
        }
    }
}