node {
  stage 'Build Jar'
  //

  stage 'Build docker image'
  def newApp = docker.build "noprysk/containerization-test:${env.BUILD_TAG}"

  stage 'Deploy docker image to hub'
  newApp.push 'latest'
}
