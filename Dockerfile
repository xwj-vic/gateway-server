FROM openjdk:8-jdk-slim
VOLUME /tmp
ADD build/libs/gateway-server-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
