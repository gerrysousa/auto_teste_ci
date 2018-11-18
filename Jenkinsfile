pipeline{
    agent{
        docker{
            image 'ruby'
            args '--link selenium_server'
        }
    }

    stages{
        stage('Preparation'){
            step{
                sh "bundle install"
            }
        }

        stage('Run Tests'){
            sh "bundle exec cucumber -p ci -t @smoke"
        }
    }
}
