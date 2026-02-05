pipeline {
    agent any

    tools {
        maven 'maven3'
    }

    environment {
        IMAGE = "dockerhub-username/petclinic-app:latest"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/sagarjaybhaye07/devops-petclinic-cicd.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Trivy FS Scan') {
            steps {
                sh 'trivy fs --exit-code 0 .'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE .'
            }
        }
    }
}

