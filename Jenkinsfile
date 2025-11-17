pipeline {
    agent any

    stages {

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
