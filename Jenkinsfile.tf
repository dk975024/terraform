pipeline{
    agent any
    tools {
        terraform 'terraform'
    }
    stages{
        stage('git check out'){
            steps{
                git branch: 'main', url: 'https://github.com/dk975024/terraform.git'
            }
        }
        stage('Terraform Init'){
            steps{
                sh label: '', script: 'terraform init'
            }
        }
    }
}
