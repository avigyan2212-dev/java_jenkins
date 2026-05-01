pipeline {
    agent any

    environment {
        DOCKERHUB_USER = 'avigyan2212'   // replace with your DockerHub username
        IMAGE_NAME = 'hello-world-java'
        IMAGE_TAG = 'latest'
        }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Pull Docker Image') {
            steps {
                sh "docker pull ${DOCKERHUB_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yml'
                sh 'kubectl apply -f service.yml'
            }
        }

        stage('Verify Pod') {
            steps {
                sh 'kubectl get pods'
                sh 'kubectl get svc'
            }
        }
    }
}


