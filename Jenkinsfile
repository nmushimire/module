pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code from a version control system
                git url: 'https://github.com/your-repo/terraform-code.git', branch: 'main'
            }
        }

        stage('Initialize Terraform') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
            }
        }

        stage('Validate Terraform') {
            steps {
                // Validate the Terraform configuration
                sh 'terraform validate'
            }
        }

        stage('Plan Terraform') {
            steps {
                // Create a Terraform plan
                sh 'terraform plan -out=tfplan'
            }
        }

    //     stage('Apply Terraform') {
    //         steps {
    //             // Apply the Terraform plan
    //             input message: 'Approve Terraform apply?', ok: 'Apply'
    //             sh 'terraform apply tfplan'
    //         }
    //     }

    //     stage('Cleanup') {
    //         steps {
    //             // Optionally, remove the plan file
    //             sh 'rm -f tfplan'
    //         }
    //     }
    // }

    // post {
    //     always {
    //         // Always run this block, regardless of success or failure
    //         archiveArtifacts artifacts: '**/*.tfstate', fingerprint: true
    //         echo 'Cleanup actions can go here.'
    //     }
    //     success {
    //         echo 'Terraform applied successfully!'
    //     }
    //     failure {
    //         echo 'There was an error applying Terraform!'
    //     }
    }
}
