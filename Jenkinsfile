pipeline {
    agent any
    tools {
      jdk 'Java-9.0.4'
      maven 'Maven_3.8.6' 
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'mvn clean compile'

            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'mvn test'

            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'mvn install'
                sh 'chmod 777 deploy.sh'
                sh './deploy.sh -w demoaws -p /var/lib/jenkins/workspace/demoAwsPipeline2/target'

                
            }
        }
    }
   
}
