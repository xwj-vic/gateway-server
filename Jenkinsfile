node{
    stage('Checkout') {
        git url: 'https://github.com/tw-cloud-native/gateway-server.git',
            branch: 'master'
    }

    stage('Test') {
        sh 'ls -la'
    }

    withEnv([
        'SERVICE=gateway-server'
    ]){
        stage('Build') {
            sh './build.sh'
        }

        stage('Deploy') {
            sh './deploy.sh'
        }
    }


}