pipeline {
    agent any

    stages {
        stage('Declarative: Checkout SCM') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure_DES.git']]])
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    git url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure_DES.git'
                    sh 'cd Jenkins-Terraform-EC2-S3-Infrastructure_DES && terraform init'
                }
            }
        }

        stage('Terraform Apply Termination') {
            steps {
                script {
                    git url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure_DES.git'
                    sh 'cd Jenkins-Terraform-EC2-S3-Infrastructure_DES && terraform apply -auto-approve -var="terminate_instance=true" -var="tf_file_name=Jenkins-Terraform-EC2-S3-Infrastructure_DES.tf"'
                }
            }
        }
    }
}
