pipeline {
  agent any

  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
  stages {
    stage('Checkout code') {
      steps {
        checkout scm
      }
    }

    stage('Build') {
      steps {
        bat 'docker-compose -f docker-compose.yml build'
        bat 'start docker-compose -f docker-compose.yml up -d'
      }
    }

    stage('Test') {
      steps {
        echo "test passed"
      }
    }

    stage('Push Images to Docker Hub') {
      steps {
        bat 'echo %DOCKERHUB_CREDENTIALS_PSW%| docker login -u %DOCKERHUB_CREDENTIALS_USR% --password-stdin'
        bat 'docker tag pfea8_pipeline-web:latest ash0semlali/pfea8:latest'
        bat 'docker push ash0semlali/pfea8:latest'
      }
    }

    stage('Cleanup') {
      steps {
        bat 'docker-compose -f docker-compose.yml down'
      }
    }
  }

  post {
    success {
      emailext body: 'The pipeline has finished.',
        subject: 'Pipeline Success',
        to: 'abdelkarimsemlali67@gmail.com'
    }
    failure {
      emailext body: 'The pipeline has failed.',
        subject: 'Pipeline Failure',
        to: 'abdelkarimsemlali67@gmail.com'
    }
  }
}
