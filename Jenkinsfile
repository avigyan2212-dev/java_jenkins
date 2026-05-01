pipeline {
    agent any

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

        stage('Tag Docker Image') {
            steps {
                sh 'docker tag hello-world-java avigyan2212/hello-world-java:latest'
            }
        }

        stage('Push to DockerHub') {
            steps {
                sh 'docker push avigyan2212/hello-world-java:latest'
            }
        }
    }
}
