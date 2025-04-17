FROM eclipse-temurin:17-jdk-alpine

# Expose the port that the app will run on
EXPOSE 8080

# List the files during the build to check if the .jar file exists
RUN ls -l

# Set the environment variable for the app's home directory
ENV APP_HOME /usr/src/app

# Copy the .jar file into the container (ensure the path is correct)
COPY *.jar $APP_HOME/app.jar

# Set working directory
WORKDIR $APP_HOME

# Optional: List files in the working directory after copying the jar
RUN ls -l

# Run the application
CMD ["java", "-jar", "app.jar"]



