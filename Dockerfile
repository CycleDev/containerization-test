FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/containerization-test-0.0.1.jar /tmp/containerization-test-0.0.1.jar
EXPOSE 9001
ENTRYPOINT ["java","-jar","/tmp/containerization-test-0.0.1.jar"]