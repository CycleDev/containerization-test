
dockerHubUrl = 'https://registry.hub.docker.com';
k8sNamespace = 'default'

def buildProject() {
    echo 'Building project ...'
    try {
        // Get last changes
        checkout scm

        docker.image('maven').inside {
            sh 'mvn clean install'
        }
    } catch(Exception err) {
        echo err.getMessage()
        throw err;
    }
}

def buildAndPushImage() {

    try {
        echo 'Building docker image ...'
        def app = docker.build('noprysk/containerization-test')

        echo 'Pushing docker image to docker hub'
        docker.withRegistry("${dockerHubUrl}", "docker-hub-credentials") {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    } catch(Exception err) {
        echo err.getMessage()
        throw err;
    }
}

def publishImage() {
    echo 'Pushing docker image from docker hub to kubernetes ...'

    try {
        //sh "kubectl get pods"
        //sh 'kubectl set image deployment/containerization-test containerization-test=noprysk/containerization-test'

    } catch(Exception err) {
        echo err.getMessage()
        throw err;
    }
}

node {
    stage('Build project') {
        buildProject()
    }

    stage('Build and publish docker image') {
        buildAndPushImage()
    }

    stage('Push docker image to kubernetes') {
        publishImage()
    }
}
