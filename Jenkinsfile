pipeline {
    agent any
    environment {
        CONTAINER   =  'tarsbike'
        URL_CONTAINER     =  'http://localhost:8181/'
        BRANCH="dev"

   }

    stages {
        stage ("Checkout"){
            steps {
                git(
                    url: "https://github.com/jpablolima/tars-bikecraft.git",
                    branch: "${BRANCH}",
                    changelog: true,
                    poll: true
                )
            }
        }
        stage("Build imagem...") {
            steps{
                sh "docker build -t ${CONTAINER} ."
                
            }
        }
        stage("Check if Container exists"){
            steps{
                sh "docker ps --filter 'name=${CONTAINER}'"
            
        }
       stage("Remove Container") {
            steps {
                
                sh "docker rm -f ${CONTAINER} "
            }
        }
        stage("Run Image"){
            steps {
                sh "docker run --name tarsbike -d -p 8181:80 ${CONTAINER}"
                
            }
        }
        stage("Output") {
            steps{
                echo "URL container run: ${URL_CONTAINER}"
                echo "GIT_COMMIT ${GIT_COMMIT}"
                echo "Build URL ${BUILD_URL}"
                echo "Docker Container ${CONTAINER}"
                echo "Workspace ${WORKSPACE}"
                echo "Git Branch ${GIT_BRANCH}"
                echo "Build Number ${BUILD_ID}"
                echo "Job Name ${JOB_NAME}"
                }
            }
        }
    }
}