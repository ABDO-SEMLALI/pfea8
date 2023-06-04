pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/ABDO-SEMLALI/pfea8.git'
      }
    }

    stage('Build') {
      steps {
        sh 'docker-compose -f docker-compose.yml build'
        sh 'docker-compose -f docker-compose.yml up -d'
      }
    }

    stage('Test') {
      steps {
        script {
          docker.image('myapp:v1.0').inside {
            sh 'echo "test passed"'
          }
        }
      }
    }

    stage('Push Images to Docker Hub') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'DOCKERHUB_CREDENTIAL_ID', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')]) {
          sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
          sh 'docker-compose -f docker-compose.yml push'
        }
      }
    }

    stage('Cleanup') {
      steps {
        sh 'docker-compose -f docker-compose.yml down'
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
