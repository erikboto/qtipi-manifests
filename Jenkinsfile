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
                sh './ci-scripts/repo_init'
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'build/tmp/deploy/*/*/*'
            }
        }
    }

    post {
        always {
            deleteDir()
        }
    }
}
