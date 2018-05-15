pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('build') {
            steps {
                sh "echo 'building... JAR'"
                sh 'mvn clean install'
            }
        }
        stage('create image') {
            agent any
            steps {
                sh "echo 'creating... image'"
            }
        }
        stage('deploy') {
            steps {
                sh 'echo "deploy JAR"'
            }
        }
    }
}

