FROM eclipse-temurin:11-jdk
 
WORKDIR /app
 
# Copy JAR from target folder
COPY target/*.jar app.jar
 
EXPOSE 8085
 
ENTRYPOINT ["java", "-jar", "app.jar"]






# FROM eclipse-temurin:11-jdk
# WORKDIR app/
# EXPOSE 8085
# ENTRYPOINT ["java","-jar","onlinebookstore"]


