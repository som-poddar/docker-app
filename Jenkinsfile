// this will start an executor on a Jenkins agent with the docker label
pipeline {
  agent any
  stages {
    stage('build binary') {
      steps {
        sh 'make clean'
        sh 'make setup'
        sh 'make build'
      }
    }
    stage('build image') {
      steps {
        sh 'make dockerbuild'
      }
    }
    stage('push image') {
      steps {
        sh 'make dockerhublogin'
        sh 'make dockerpush'
      }
    }
  }
}