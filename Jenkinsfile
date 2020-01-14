node{
    
    stage('fetch code'){
        git 'https://github.com/ramanlfc/spring-petclinic.git'
    }
    
    stage('build'){
        withMaven(maven: 'maven') {
            sh label: '', script: 'mvn compile test package'
        }
    }

    stage('docker build'){
        sh label: '', script: 'docker build -t ramanlfc/spring-petclinic:1 .'
    }

    stage('docker push'){
        
        
        withCredentials([usernamePassword(credentialsId: 'docker-hub-cred', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push ramanlfc/spring-petclinic:1'
        }

        emailext body: 'docker image for spring-petclinic has been pushed', subject: 'docker image pushed', to: 'john@abc.com'
    }
       
}