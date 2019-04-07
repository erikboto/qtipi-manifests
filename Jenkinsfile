pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            label 'docker'
            args '--entrypoint=\'\''
        }
    }
    stages {
        stage('Setup') {
            steps {
                step([$class: 'WsCleanup'])
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'pwd'
                sh './ci-scripts/repo_init'
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'build/tmp/deploy/images/raspberrypi3/*.rpi-sdimg'
            }
        }
    }
}
