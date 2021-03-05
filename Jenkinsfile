pipeline {
    agent any
    stages {
        stage('stage one') {
            steps {
                echo 'give one to first stage'
            }
        }
	stage('stage two') {
           steps {
               echo 'give two to second stage'
                git branch: 'main', credentialsId: '1cb15ffe-899b-4375-9d8d-5bb82d0df2ec', url: 'https://github.com/nandini2022/dureka.git'
              }
        }
	stage('built') {
           steps {
               echo 'buitling'
               echo pwd()
               sh "chmod +x -R ${env.WORKSPACE}/world.sh"
               sh './world.sh'
	        }
        }
   stage('deploy') {
           steps {
               echo 'deploying'
               echo pwd()
               sh "chmod +x -R ${env.WORKSPACE}/deploy.sh"
               sh './deploy.sh'
	        }
             }
    }
}
