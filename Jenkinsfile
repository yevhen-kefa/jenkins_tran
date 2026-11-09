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
        stage('Dev / Test') {
            steps {
                echo 'Running tests...'
                sh 'make test'
            }
        }
        stage('Pré-prod') {
            steps {
                echo 'Analyse de la mémoire avec Valgrind...'
                sh 'valgrind --leak-check=full ./tri_bulles'
            }
        }
        stage('Production') {
            steps {
                echo 'Préparation pour la production...'
                sh 'make clean'
                sh 'make'
                sh 'strip tri_bulles'
                sh 'make install'
            }
        }
    }
}