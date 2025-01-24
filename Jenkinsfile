@Library('Shared')_
pipeline{
    agent {label 'worker-node'}
    environment {
        MYSQL_CONTAINER_NAME = 'mysql_cont'
        MYSQL_PASSWORD = 'springstudent'
    }
    
    stages{
        stage("Code pull"){
            steps{
              clone("https://github.com/sharmaaakash170/Expenses-Tracker-WebApp.git", "main")
            }
        }
        stage("Code Build"){
            steps{
              build_image(image: "exp_app", version: "latest")
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
        stage("Running imp command in SQL"){
            steps{
                script{
                    sh "docker-compose exec mysql_cont mysql -u root -p${MYSQL_PASSWORD} -e 'CREATE USER IF NOT EXISTS 'springstudent' IDENTIFIED BY 'springstudent';'"
                    sh "docker-compose exec mysql_cont mysql -u root -p${MYSQL_PASSWORD} -e 'GRANT ALL PRIVILEGES ON expenses_tracker.* TO 'springstudent';'"
                }
            }
        }
    }
}
