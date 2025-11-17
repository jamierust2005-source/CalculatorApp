pipeline {
    agent any

    environment {
        IMAGE_NAME = "calculator-app"
        IMAGE_TAG  = "latest"
    }

    stages {

        stage('Clean workspace') {
            steps {
                deleteDir()
            }
        }

        stage('Run Tests') {
            steps {
                sh 'pytest --maxfail=1 --disable-warnings'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh """
                  docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
                """
            }
        }

    }
}
