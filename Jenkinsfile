pipeline {
    agent any
    environment {
        IMAGE='jpablolima/apache2tarsbikecraft:1.2.0'
    }

    stages {
        stage ("Checkout"){
            steps {
                git(
                    url: "https://github.com/jpablolima/tars-bikecraft.git",
                    branch: "develop",
                    changelog: true,
                    poll: true
                )
            }
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
                sh "docker run --name tarsbike -d -p 8181:80 jpablolima/apache2tarsbikecraft:1.2.0"
            }
        }
    }
}
