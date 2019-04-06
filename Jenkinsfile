pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            label 'docker'
            args '--entrypoint=\'\''
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
