pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh "echo 'building... JAR'"

                def mvn_version = 'M3'
                withEnv( ["PATH+MAVEN=${tool mvn_version}/bin"] ) {
                  sh "mvn clean package"
                }
            }
        }
        stage('deploy') {

            steps {
                sh 'echo "deploy JAR"'
            }

        }
    }
}

