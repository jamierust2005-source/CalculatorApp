pipeline {
  agent any

  stages {
    stage('Pull latest code') {
      steps {
        // Pull your GitHub repository using shell commands
        sh '''
          REPO_URL="https://github.com/jamierust2005-source/CalculatorApp.git"
          BRANCH="main"

          if [ ! -d "repo" ]; then
            echo "Cloning repository..."
            git clone -b $BRANCH $REPO_URL repo
          else
            echo "Pulling latest changes..."
            cd repo
            git pull origin $BRANCH
          fi
        '''
      }
    }

    stage('Run Calculator Script') {
      steps {
        // Run your Python calculator
        sh '''
          cd repo
          python3 calculator.py
        '''
      }
    }
  }

  post {
    success {
      echo '✅ Calculator executed successfully!'
    }
    failure {
      echo '❌ Something went wrong running calculator.py'
    }
  }
}
