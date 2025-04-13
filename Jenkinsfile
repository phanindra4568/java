pipeline {
    agent any

    environment {
        IMAGE_NAME = 'java-docker-jenkins'
    }

    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'java', url: 'https://github.com/phanindra4568/java.git'
            }
        }

        stage('Build Java App') {
            steps {
                dir('app') {
                    sh 'mvn clean package'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm -p 9090:9090 $IMAGE_NAME'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution complete.'
        }
    }
}
