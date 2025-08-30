# Use an official JDK runtime as base image
FROM openjdk:17-jdk-slim
# Set working directory
WORKDIR /app
# Copy JAR file into the container
COPY target/service-registry-0.0.1-SNAPSHOT.jar app.jar
# Expose port (same as in your Spring Boot app)
EXPOSE 8761
# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]