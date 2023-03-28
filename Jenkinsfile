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
        stage("Remove Container") {
            steps{
                 sh "docker run --rm jpablolima/apache2tarsbikecraft:1.2.0"
            }
        }
        stage("Deploy new Container"){
            steps{
                 sh "docker run --rm -d -p 8181:80 jpablolima/apache2tarsbikecraft:1.2.0"
            }
            }
        }

}
