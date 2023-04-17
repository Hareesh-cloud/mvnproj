node{
    stage("Git CheckOut"){
        git url: 'https://github.com/MithunTechnologiesDevOps/spring-boot-mongo-docker.git',branch: 'master'
    }
    
    stage(" Maven Clean Package"){
      sh "mvn clean package"
    } 
    
    stage("Build Dokcer Image") {
         sh "docker build -t hareesh5041/spring-boot-mongo ."
    }
    
    stage("Docker Push"){
        withCredentials([string(credentialsId: 'DockerPwd', variable: 'DockerPwd')]) {
          sh "docker login -u hareesh5041 -p ${DockerPwd}"
        }
        sh "docker push hareesh5041/spring-boot-mongo"
        
    }
}
