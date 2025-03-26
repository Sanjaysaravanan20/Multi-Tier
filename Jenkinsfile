pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-credentialss')
        AWS_SECRET_ACCESS_KEY = credentials('aws-credentialss')
        AWS_REGION = 'us-east-2'
    }
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/Sanjaysaravanan20/Multi-Tier.git'
            }
        }
        stage('Initialize Terraform') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Validate Terraform') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Plan Terraform') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Apply Terraform') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
