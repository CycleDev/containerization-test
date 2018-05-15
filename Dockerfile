FROM openjdk:8-jre-alpine

# Copy the current directory contents into the container
COPY /containerization-test-0.0.1.jar /home/containerization-test-0.0.1.jar

# Make port 9001 available to the world outside this container
EXPOSE 9001

# Run application
CMD ["java", "-jar", "/home/containerization-test-0.0.1.jar"]