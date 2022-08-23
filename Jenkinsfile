pipeline {
    agent any
    tools {
      jdk 'Java-9.0.4'
      maven 'Maven_3.8.6' 
    }
    stages {
        stage('build') {
            steps {
                echo 'prabal'
                sh 'chmod 777 deploy.sh'
                sh './test.sh'
                
            }
        }
    }
}
