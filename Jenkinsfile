node{
 stage('SCM checkout') {
  git 'https://github.com/Ravikiran7161/Dockerization.git'
 }
 stage('clean-mvn') {
  sh 'mvn clean'
 }
 stage('test-mvn') {
  sh 'mvn test'
 }
 stage('pack-mvn') {
  sh 'mvn package'
 }
 stage('build docker image'){
  sh 'docker build -t ravikiran8161/openjdk:8-jre-alpine .'
 }
 stage('push docker image'){
  withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
   sh "docker login -u ravikiran8161 -p ${dockerhubpwd}"
 }
  sh 'docker push ravikiran8161/openjdk:8-jre-alpine'
 }
 stage('build container'){
 sh 'docker run -p 8080:8080 --name my-app911 ravikiran8161/openjdk:8-jre-alpine'
 }
}
