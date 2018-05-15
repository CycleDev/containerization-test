FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /containerization-test-0.0.1.jar /tmp/containerization-test-0.0.1.jar
EXPOSE 9001
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/tmp/containerization-test-0.0.1.jar"]

