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
                
            }
        }
        stage('Monitor') {
            steps {
                echo 'Monitoring....'
                sh 'chmod 777 test.sh'
                sh './test.sh'
                
            }
        }
        
    }
}
