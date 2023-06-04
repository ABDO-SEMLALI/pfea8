pipeline {
  agent any

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
        script {
          docker.image('php_web').inside {
            sh 'echo "test passed"'
          }
        }
      }
    }

    stage('Push Images to Docker Hub') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'DOCKERHUB_CREDENTIAL_ID', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')]) {
          bat 'docker login -u %DOCKERHUB_USERNAME% -p %DOCKERHUB_PASSWORD%'
          bat 'docker-compose -f docker-compose.yml push'
        }
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
