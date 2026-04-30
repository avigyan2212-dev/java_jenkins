pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pulls code from the repository configured in the Jenkins Job
                checkout scm
            }
        }

        stage('Compile') {
            steps {
                echo 'Compiling Java program...'
                sh 'javac HelloWorld.java'
            }
        }

        stage('Execute & Verify') {
            steps {
                echo 'Executing application...'
                // Run the program and pipe output to verify it works
                sh 'java HelloWorld'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the logs above.'
        }
    }
}


