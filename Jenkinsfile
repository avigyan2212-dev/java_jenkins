pipeline {
    agent any

    stages {
        stage('Checkout from SCM') {
            steps {
                // This will use the Jenkins job's configured SCM (local repo or linked GitHub)
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
    }
}
