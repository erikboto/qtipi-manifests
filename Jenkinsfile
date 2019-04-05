pipeline {
    agent {
        node {
            label 'docker'
        }
        dockerfile {
            filename 'Dockerfile'
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
