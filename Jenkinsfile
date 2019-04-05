pipeline {
    agent {
        label: 'docker'
        dockerfile {
            filename: 'Dockerfile'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'ls'
            }
        }
    }
}
