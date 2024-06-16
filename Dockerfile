# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /

# Copy the jar file into the container
COPY target/employee-system-backend-0.0.1-SNAPSHOT.jar /employee-system-backend.jar

# Expose the port your application runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "employee-system-backend.jar"]
