pipeline {
    agent any
    tools {
        maven 'M3'
    }
    stages {
        stage('build') {
            steps {
                sh "echo 'building... JAR'"
                sh 'mvn clean package'
            }
        }
        stage('deploy') {

            steps {
                sh 'echo "deploy JAR"'
            }

        }
    }
}

