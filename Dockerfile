# Use the official Eclipse Temurin image for Java 21 on Alpine
FROM eclipse-temurin:21-jdk-alpine
 # Define the location of your JAR file
ARG JAR_FILE=target/*.jar
  # Copy the JAR into the container
COPY ${JAR_FILE} app.jar
  # Expose the standard Spring Boot port
EXPOSE 8080
   # Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]