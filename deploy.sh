stage('deploy') {
           steps {
               echo 'deploying'
               echo pwd()
               sh "chmod +x -R ${env.WORKSPACE}/deploy.sh"
               sh './deploy.sh'
	        }
