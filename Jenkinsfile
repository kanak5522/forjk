pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID = credentials(Acesskeyidknk)
        AWS_SECRET_ACCESS_KEY = credentials(secretkeyknk)
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                input 'Approve Terraform Apply?' // Manual approval step
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
        always {
            cleanWs()
        }
    }
}


