pipeline {
    agent any

    environment {
        DOCKERHUB_USER = 'avigyan2212'   
        IMAGE_NAME = 'hello-world-java'
        IMAGE_TAG = 'latest'
        KUBECONFIG = '/var/lib/jenkins/.kube/config'  
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Compile Java') {
            steps {
                sh 'javac HelloWorld.java'
            }
        }

        stage('Run Java App') {
            steps {
                sh 'java HelloWorld'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Run Docker Container') {
            steps {
                sh "docker run --rm ${IMAGE_NAME}"
            }
        }

        stage('Tag & Push Docker Image') {
            steps {
                sh "docker tag ${IMAGE_NAME} ${DOCKERHUB_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
                sh "docker push ${DOCKERHUB_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }

        stage('Start Minikube') {
            steps {
                sh 'minikube start --driver=docker'
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
