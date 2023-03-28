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
        stage("Build") {
            steps{
                sh "docker build -t jpablolima/apache2tarsbikecraft:1.2.0 ."
            }
        }

    }
}