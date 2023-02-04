pipeline {
    agent any   

    tools {
        maven "M3"
        jdk "openjdk11"
    }

    environment {
        def BRANCH_NAME = "${params.branch}"
    }

    stages {
        stage('Build Admin') {
            steps { 
                script{
                    if ("${params.branch}" == "null") {
                        BRANCH_NAME = "master"
                    } 
                    sh "echo BRANCH_NAME: ${BRANCH_NAME}"
                    
                    sh "rm -rf code"

                    dir("code"){
                        checkout([$class: 'GitSCM', branches: [[name: "${BRANCH_NAME}"]], 
                        doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], 
                        userRemoteConfigs: [[credentialsId: 'gitlab2',
                            url: 'https://github.com/oabhinav007/jenkins-docker-build.git']]
                        ])     

                        dir("upeg-admin") {
                            sh "mvn clean package"   
                            sh "ls -l"                 
                                                             
                        }                    
                    }
                }
            }
        }

    }
}
