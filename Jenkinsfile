pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            label 'docker'
            args '--entrypoint=\'\''
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'pwd'
                sh './ci-scripts/repo_init'
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'tmp/deploy/images/raspberrypi3/*.rpi-sdimg'
            }
        }
    }
}
