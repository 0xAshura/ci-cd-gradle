# Use the official OpenJDK 17 Alpine variant
FROM openjdk:17-alpine

# Expose port 8080 for the application
EXPOSE 8080

# Copy the built JAR file into the container
COPY build/libs/*.jar /app.jar

# Set the working directory (optional)
WORKDIR /

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]


