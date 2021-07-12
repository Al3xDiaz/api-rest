
pipeline {
    agent any
    /*environment {       
        PIP_STATUS="faild"
        }
    */
    stages {
        stage('Build') {
            steps {
              sh "printenv"
            }
        }
    }
    /*post {
      success {
        -rwxr-xr-x 1 jenkins 197121 846 Apr  3 03:42 ./slackmessage.sh
        sh '/var/lib/jenkins/slackmessage.sh true'
      }
      failure {
          'false' or ''
        sh '/var/lib/jenkins/slackmessage.sh false'
      }
    }*/
}