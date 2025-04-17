FROM eclipse-temurin:17-jdk-alpine

# Expose the port that the app will run on
EXPOSE 8080

# Optional: list files in the directory to debug
RUN ls

# Set the environment variable for the app's home directory
ENV APP_HOME /usr/src/app

# Copy the .jar file into the container
COPY *.jar $APP_HOME/app.jar

# Set working directory
WORKDIR $APP_HOME

# Ensure the .jar file is executable
RUN chmod +x app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]

