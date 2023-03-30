pipeline {
    agent any
    environment {
        IMAGE   =  'jpablolima/apache2tarsbikecraft:1.2.0'
        URL_CONTAINER     =  'http://localhost:8282/'
        BRANCH="dev"

   }

         stage("Remove Container") {
            steps{
                sh "docker rm -f tarsbike"
                
            }
        }
        stage("Check if Docker Image exists"){
            steps{
                script {
                    def output = sh (script: 'docker images ${IMAGE}', returnStdout: true).trim()
                   
                    if (output.contains("${IMAGE}")) {
                        echo "Imagem existe...Removendo!"
                        sh 'docker rmi ${IMAGE}'

                    } else {
                       echo "Imagem não existe!"
                    }
                }
            }
        }
       stage("Build new Image") {
            steps {
                
                sh "docker  build -t ${IMAGE} ."
            }
        }
        stage("Run Image"){
            steps {
                sh "docker run --name tarsbike -d -p 8181:80 ${IMAGE}"
                
            }
        }
        stage("Output") {
            steps{
                echo "URL container run: ${URL_CONTAINER}"
                echo "GIT_COMMIT ${GIT_COMMIT}"
                echo "Build URL ${BUILD_URL}"
                echo "Docker Image ${IMAGE}"
                echo "Workspace ${WORKSPACE}"
                echo "Git Branch ${GIT_BRANCH}"
                echo "Build Number ${BUILD_ID}"
                echo "Job Name ${JOB_NAME}"
            }
        }
    }
}
