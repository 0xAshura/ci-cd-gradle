FROM openjdk:17-jre-alpine

EXPOSE 8080

COPY build/libs/my-app-1.0-SNAPSHOT.jar /app.jar
WORKDIR /

ENTRYPOINT ["java", "-jar", "/app.jar"]