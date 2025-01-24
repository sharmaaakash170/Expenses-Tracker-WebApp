@Library('Shared')_
pipeline{
    agent {label 'worker-node'}
    
    stages{
        stage("Code pull"){
            steps{
              clone("https://github.com/sharmaaakash170/Expenses-Tracker-WebApp.git", "main")
            }
        }
        stage("Code Build"){
            steps{
              build_image("exp_app", "latest")
            }
        }
        stage("Code Push to Dockerhub"){
            steps{
                withCredentials([usernamePassword
                (credentialsId: "dockercreds", 
                usernameVariable: "username", 
                passwordVariable: "password")]){
                    sh "docker login -u ${env.username} -p ${env.password}"
                    sh "docker image tag exp_app ${env.username}/exp_app:latest"
                    sh "docker push ${env.username}/exp_app:latest"
                }
            }
        }
        stage("Code Deploy"){
            steps{
              deploy()
            }
        }
    }
}
