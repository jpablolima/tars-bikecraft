pipeline {
    agent any

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
                    def output = sh (script: "docker images jpablolima/apache2tarsbikecraft:1.2.0", returnStdout: true).trim()
                   
                    if(output.contains("jpablolima/apache2tarsbikecraft:1.2.0")) {
                        echo "Imagem existe!"
                        echo "Imagem será removida!"
                        sh "docker rmi jpablolima/apache2tarsbikecraft:1.2.0"

                    } else {
                        echo "Imagem não existe!"
                    }
                }
            }
        }
    //    stage("Build new Image") {
    //         steps {
    //             sh "docker build -t jpablolima/apache2tarsbikecraft:1.2.0 ."
    //         }
    //     }
        // stage("Run Image"){
        //     steps {
        //         sh "docker run --name tarsbike -d -p 8181:80 jpablolima/apache2tarsbikecraft:1.2.0"
        //     }
        // }
    }
}
