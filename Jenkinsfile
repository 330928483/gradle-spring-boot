pipeline {
  options { disableConcurrentBuilds() }
  agent any
  stages {
    stage('build') {
      steps {
        sh './gradlew --version'
      }
    }
  }
}