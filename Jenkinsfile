pipeline {
    agent any
    stages {
        stage("Clone Git Repository") {
            steps {
                git(
                    url: "https://github.com/jpablolima/tars-bikecraft.git",
                    branch: "master",
                    changelog: true,
                    poll: true
                )
            }
        }
    }
}