# Use official OpenJDK 11 as base image
FROM openjdk:11-jdk-slim

# Set environment variable
ENV JAVA_OPTS=""

# Create a directory for the app
WORKDIR /app

# Copy the Spring Boot JAR file into the image
COPY target/*.jar app.jar

# Expose the port your app runs on (default Spring Boot port)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
