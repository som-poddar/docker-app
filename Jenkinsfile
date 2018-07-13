pipeline {
  agent any
  stages {
    stage('build binary') {
      steps {
        sh 'mkdir -p /go/src/github.com/som-poddar/docker-app'
        sh 'cd /go/src/github.com/som-poddar/docker-app && make setup && make build'
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
environment {
  GOPATH = '/go'
  }
}
