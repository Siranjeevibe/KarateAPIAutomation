# Use a base image with Java and Maven
FROM maven:3.8.1-openjdk-11-slim

# Set the working directory
WORKDIR /app

# Copy project files to the working directory
COPY . /app

# Build the project with Maven
RUN mvn clean install -DskipTests

EXPOSE 8080

# Set the entry point to run the Karate tests
CMD mvn test
