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
        stage("Build") {
            steps {
                sh "docker build -t jpablolima/apache2tarsbikecraft:1.2.0 ."
            }
        }
        stage("Run Image"){
            steps {
                sh "docker run --name tarsbike -d -p 8181:80 jpablolima/apache2tarsbikecraft:1.2.0"
            }
        }
    }
}
