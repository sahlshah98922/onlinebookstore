FROM openjdk:17
WORKDIR /app
COPY target/onlinebookstore-0.0.1-SNAPSHOT.war app.war
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.war"]

