pipeline {
    agent any
    stages {
        stage("Clone Git Repository") {
            steps {
                git(
                    url: "https://github.com/jpablolima/tars-bikecraft.git",
                    branch: "develop",
                    changelog: true,
                    poll: true
                )
            }
        }
        stage("Build Docker Image") {
            steps{
                sh "docker build -t jpablolima/apache2tarsbikecraft:1.2.0 ."
               
            }
        }
        stage("Stop Container") {
            steps{
                sh "ls -la"
                // sh 'docker ps -f name=tarsbike -q | xargs --no-run-if-empty docker container stop'
            }
        }
        // stage("Start Container"){
        //     steps{
        //         sh "docker start tarsbike"
        //    }
        //  }
        // stage("Deploy new Container"){
        //     steps{
        //          sh "docker run --name tarsbike -d -p 8181:80 jpablolima/apache2tarsbikecraft:1.2.0"
        //     }
        //     }
        }

}