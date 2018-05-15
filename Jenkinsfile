pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh "echo 'building... JAR'"
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

