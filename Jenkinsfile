pipeline {
    agent any 
        
        stages {
            stage("Build") {
                steps{
                    checkout scm
                    sh "docker build -t jpablolima/apache2tarsbikecraft:1.2.0 ." 
                }
            }
        }
}

