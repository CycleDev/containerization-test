
def buildProject() {
    echo 'Building project ...'
    try {
        // Get last changes
        checkout scm

        //docker.image('maven').inside {
            sh 'mvn clean install'
        //}
    }
    catch(Exception err) {
        echo err.getMessage()
        throw err;
    }
}

node {
    def app

    stage('Build project') {
        buildProject()
    }

    stage('Build docker image') {
        app = docker.build('noprysk/containerization-test')
    }

    stage('Push docker image to docker hub') {
        docker.withRegistry("https://registry.hub.docker.com", "docker-hub-credentials") {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }

    stage('Push docker image to kubernetes') {
        sh "kubectl get pods"
        //sh 'kubectl set image deployment/containerization-test containerization-test=noprysk/containerization-test'
    }
}
