# First stage: Build the app
FROM maven:sapmachine AS build

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Build the application (creates jar in target/)
RUN mvn package -DskipTests

# Second stage: Run the app
FROM eclipse-temurin:17-jre-alpine

# Set working directory
WORKDIR /app

# Copy JAR from the build stage
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 8080

# Run the JAR
CMD ["java", "-jar", "app.jar"]
