pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'No build step needed for static site.'
            }
        }

        stage('Test') {
            steps {
                echo 'No automated tests defined. Skipping.'
            }
        }

        stage('Archive') {
            steps {
                echo 'Archiving static website files...'
                archiveArtifacts artifacts: '**/*.html, **/*.css, **/*.js', fingerprint: true
            }
        }

        // Optional: Deploy to a web server or S3 bucket
        // stage('Deploy') {
        //     steps {
        //         echo 'Deploying site...'
        //         // Example: Use SCP, S3 CLI, or Rsync here
        //     }
        // }
    }

    post {
        success {
            echo 'Build completed successfully.'
        }
        failure {
            echo 'Build failed.'
        }
    }
}

