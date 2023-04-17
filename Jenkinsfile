pipeline {
    agent any
    environment {
        PROJECT_ID = 'rising-timing-383506'
                CLUSTER_NAME = 'jenkins'
                LOCATION = 'asia-southeast1-a'
                CREDENTIALS_ID = 'kubernetes'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build image') {
            steps {
                script {
                     sh "docker build -t hareesh5041/pipeline:${env.BUILD_ID} .")
                    }
            }
        }
        
        stage('Push image') {
            steps {
                script {
                    withCredentials( \
                                 [string(credentialsId: 'dockerhub',\
                                 variable: 'dockerhub')]) {
                        sh "docker login -u hareesh5041 -p ${dockerhub}"
                    }
                    app.push("${env.BUILD_ID}")
                 }
                                 
            }
        }
    }
}
