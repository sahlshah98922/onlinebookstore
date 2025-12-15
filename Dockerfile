FROM eclipse-temurin:11-jdk
WORKDIR app/
EXPOSE 8085
ENTRYPOINT ["java","-jar","onlinebookstore"]


