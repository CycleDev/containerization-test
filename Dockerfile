FROM openjdk:8-jre-alpine

# Set the working directory
WORKDIR /tmp

# Copy the current directory contents into the container
ADD containerization-test-0.0.1.jar /tmp

# Make port 9001 available to the world outside this container
EXPOSE 9001

# Run app.py when the container launches
CMD ["java", "-jar containerization-test-0.0.1.jar"]