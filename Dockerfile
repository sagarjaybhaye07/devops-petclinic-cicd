FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy the built JAR
COPY target/*.jar app.jar

EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]

