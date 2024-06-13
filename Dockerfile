# Use the official OpenJDK 17 image as the base
FROM openjdk:17-jdk-alpine

# Copy the compiled JAR file from the target directory into the image
COPY target/praksa2022-0.0.1-SNAPSHOT.jar /app.jar

# Expose the port that your Spring Boot application runs on (default is 8080)
EXPOSE 8081

# Define the entry point for your application
ENTRYPOINT ["java", "-jar", "/app.jar"]