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
       
}