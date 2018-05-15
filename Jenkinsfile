node {
  stage 'Build Jar'
  //

  stage 'Build docker image'
  git '…'
  def newImage = docker.build "noprysk/containerization-test:${env.BUILD_TAG}"

  stage 'Deploy docker image to hub'
  newImage.push 'latest'
}
