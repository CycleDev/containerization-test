pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh "echo 'building... JAR'"
            }
        }
        stage('create image') {
            steps {
                sh "echo 'creating... image'"
                sh 'docker.build("containerization-test")'
            }
        }
        stage('deploy') {

            steps {
                sh 'echo "deploy JAR"'
            }

        }
    }
}

