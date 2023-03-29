pipeline {
    agent any

    stages {
        stage("Checkout Image") {
            steps {
                sh "docker build -t jpablolima/apache2tarsbikecraft:1.2.0 ."
            }
        }
    }
}
