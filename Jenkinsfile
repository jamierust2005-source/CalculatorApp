pipeline {
    agent any

    stages {
        stage('Clean workspace') {
            steps {
                deleteDir()   // built-in: wipes the workspace folder
            }
        }

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/jamierust2005-source/CalculatorApp.git'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'pytest --maxfail=1 --disable-warnings'
            }
        }

        stage('Run Calculator Script') {
            steps {
                sh 'python3 calculator.py'
            }
        }
    }
}
