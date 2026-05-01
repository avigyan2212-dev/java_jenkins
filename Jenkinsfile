pipeline {
    agent any

    environment {
        DOCKERHUB_USER = 'avigyan2212'   // replace with your DockerHub username
        IMAGE_NAME = 'hello-world-java'
        IMAGE_TAG = 'latest'
        KUBECONFIG = '/home/avi/.kube/config'          // adjust path if different
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
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
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


