pipeline{
    agent any
    stages{
        stage('checkout from GIT'){
            steps{
               git branch: 'main', url: 'https://github.com/VarmaRahul/terraform-aws-deploy.git'
            }
        }
        stage('Terraform Init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform Apply'){
           steps{
                sh 'terraform apply --auto-approve'
           }
        }
    }   
}
