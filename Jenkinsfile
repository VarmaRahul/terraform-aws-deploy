pipeline{
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')    // Fetch AWS Access Key ID from Jenkins credentials
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')// Fetch AWS Secret Access Key from Jenkins credentials
        AWS_PROFILE           = "thor"
        // AWS_DEFAULT_REGION    = "ap-south-1"    
    }
    
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
