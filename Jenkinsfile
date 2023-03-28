pieline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git( 
                        url:"https://github.com/jpablolima/tars-bikecraft.git", 
                        branch:"develop",
                        changelog:true,
                        poll:true
                 
                 )
            }

        }
        
    }
    
}