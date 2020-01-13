node{
    
    stage('fetch code'){
        git 'https://github.com/ramanlfc/spring-petclinic.git'
    }
    
    stage('build'){
        withMaven(maven: 'maven') {
            sh label: '', script: 'mvn compile test package'
        }
    }
       
}