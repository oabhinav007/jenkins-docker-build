pipeline {
    
    agent any   

    tools {
        maven "M3"
        jdk "openjdk11"
    }
    stages {
        stage('Build') {
            steps {
                echo '<--------------- Building started --------------->'
                sh 'printenv'
                sh 'mvn clean install'
                echo '<------------- Build completed --------------->'
            }
        }

    }
}
