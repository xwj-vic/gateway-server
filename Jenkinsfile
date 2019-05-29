node{
    stage('Checkout') {
        checkout scm
    }

    stage('Test') {
        sh 'ls -la'
    }

    withEnv([
        'SERVICE=gateway-server',
    ]){
        stage('Build') {
            sh './build.sh'
        }
    }

    withEnv([
        'SERVICE=gateway-server',
        'profiles=dev'
    ]){
        stage('Deploy') {
            sh './deploy.sh'
        }
    }


}
