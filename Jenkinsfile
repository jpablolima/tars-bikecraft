pieline {
    agent any

    stages {
        stage('Checkout') {
            steps{
                echo "Checkout Repo"
                sh "git clone https://github.com/jpablolima/tars-bikecraft.git"
            }

        }
        stage('Build') {
            steps{
                echo "Build Image"
                sh "docker build -t tars ."
            }
        }
    }
    
}