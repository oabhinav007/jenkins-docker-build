FROM openjdk:8
EXPOSE 8080
ADD target/docker-jenkins-integration-sample.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
