FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD ./build/libs/app-latest.jar app.jar
EXPOSE 9411
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]