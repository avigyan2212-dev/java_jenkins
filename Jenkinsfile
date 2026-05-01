pipeline {
    agent any

    environment {
        DOCKERHUB_USER = 'avigyan2212'
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
                sh 'docker build -t hello-world-java .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm hello-world-java'
            }
        }

        stage('Tag & Push Docker Image') {
            steps {
                sh "docker tag hello-world-java ${DOCKERHUB_USER}/hello-world-java:latest"
                sh "docker push ${DOCKERHUB_USER}/hello-world-java:latest"
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




