pipeline {
    agent any

    stages {

        stage('Prep') {
            steps {
                // Just to see what's in the workspace
                sh 'pwd'
                sh 'ls -R'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'pytest --maxfail=1 --disable-warnings'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t calculator-app:latest .'
            }
        }

        stage('Run Calculator Script') {
            steps {
                sh 'python3 calculator.py'
            }
        }
    }
}
