pipeline {
    agent any
    stages {
        stage('build') {
            agent {
                docker {
                    image 'maven:3-alpine'
                }
            }
            steps {
                sh "echo 'building... JAR'"
                sh 'mvn clean install'
            }
        }
        stage('create image') {
            agent any
            steps {
                sh "echo 'creating... image'"
                sh 'docker build -t noprysk/containerization-test:latest .'
            }
        }
        stage('deploy') {
            steps {
                sh 'echo "deploy JAR"'
            }
        }
    }
}

