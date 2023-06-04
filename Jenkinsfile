pipeline {
  agent any

  environment {
    DOCKERHUB_USERNAME = credentials('DOCKERHUB_CREDENTIAL_ID').username
    DOCKERHUB_PASSWORD = credentials('DOCKERHUB_CREDENTIAL_ID').password
  }

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
        sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
        sh 'docker-compose -f docker-compose.yml push'
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
      // Send email notification on pipeline completion
      emailext body: 'The pipeline has finished.',
        to: 'abdelkarimsemlali67@gmail.com'
    }
    failure {
      // Send email notification on pipeline failure
      emailext body: 'The pipeline has failed.',
        to: 'abdelkarimsemlali67@gmail.com'
    }
  }
}
