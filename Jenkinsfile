node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build project') {
        docker.image('maven').inside {
            sh 'mvn clean install'
        }
    }

    stage('Build docker image') {
        app = docker.build('noprysk/containerization-test')
    }

    stage('Push docker image to docker hub') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push('${env.BUILD_NUMBER}')
            app.push('latest')
        }
    }

    stage('Push docker image to kubernetes') {
        sh 'kubectl set image deployment/containerization-test containerization-test=noprysk/containerization-test'
    }
}
