# Use an official OpenJDK runtime as a base image
FROM docker.io/openjdk:17-jdk-slim

ENV DB_HOST=192.168.1.8
ENV DB_PORT=5432
ENV DB_NAME=demo1
ENV POSTGRES_URL=jdbc:postgresql://${DB_HOST}:${DB_PORT}/${DB_NAME}
ENV POSTGRES_USER=root
ENV POSTGRES_PASSWORD=password

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/monolithic-0.0.1-SNAPSHOT.jar /app/app.jar

# Copy the HTML files into the container at /app/html
COPY src/main/resources/templates/*.html /app/html/

# Expose the port the app runs on
EXPOSE 8080

# Specify the command to run on container startup
CMD ["java", "-jar", "app.jar"]
