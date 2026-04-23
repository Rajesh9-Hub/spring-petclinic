Pipeline{
    agent (lable 'SPC'){
        stages ('git checkout'){
            stage{
                steps{
                    git url: 'https://github.com/Rajesh9-Hub/spring-petclinic.git'
                    branch :'main'
                }
                stage{
                    steps('build and scan'){
                        sh 'mvn package sonar:sonar'

                    }
                }
            }
        }
    }

}