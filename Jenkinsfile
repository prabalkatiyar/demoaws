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
                sh 'mvn clean install'
            }
        }
        
    }
}
