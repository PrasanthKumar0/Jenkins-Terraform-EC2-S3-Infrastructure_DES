pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    git url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure.git'
                    sh 'cd Jenkins-Terraform-EC2-S3-Infrastructure && terraform init'
                }
            }
        }

        stage('Terraform Apply Termination') {
            steps {
                script {
                    git url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure.git'
                    sh 'cd Jenkins-Terraform-EC2-S3-Infrastructure && terraform apply -auto-approve -var="terminate_instance=true"'
                }
            }
        }
    }
}
