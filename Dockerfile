# Use an alternative OpenJDK image (more commonly available)
FROM openjdk:17-jre-alpine3.18

# Expose port 8080 for the application
EXPOSE 8080

# Copy the built JAR file into the container
COPY build/libs/my-app-1.0-SNAPSHOT.jar /app.jar

# Set the working directory (optional)
WORKDIR /

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
