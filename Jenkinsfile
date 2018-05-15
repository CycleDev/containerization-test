pipeline {
    agent any
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

