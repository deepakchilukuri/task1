pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-static-site .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:80 my-static-site'
            }
        }
    }

    post {
        success {
            echo 'Website is running on port 8080'
        }
    }
}


