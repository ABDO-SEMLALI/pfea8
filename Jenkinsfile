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
        bat 'docker-compose build'
        bat 'start docker-compose up -d'
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
        bat 'docker-compose push'
      }
    }

    stage('Cleanup') {
      steps {
        bat 'docker-compose down'
      }
    }
  }

  post {
    success {
      mail bcc: '', body: '''Le pipeline Jenkins s\'est exécuté avec succès. 
      Tout s\'est déroulé sans erreur.
      ''', subject: 'Sujet : Réussite du pipeline Jenkins', to: 'abdelkarimsemlali67@gmail.com, mohamedelkaddiri@gmail.com, alidihaji@gmail.com, chaimaebahij4@gmail.com'
    }
    failure {
      mail bcc: '', body: '''Le pipeline Jenkins a echoue. 
      Veuillez prendre les mesures nécessaires pour resoudre le probleme.
      ''', subject: 'Sujet : Echec du pipeline Jenkins', to: 'abdelkarimsemlali67@gmail.com, mohamedelkaddiri@gmail.com, alidihaji@gmail.com, chaimaebahij4@gmail.com'
    }
  }
}
