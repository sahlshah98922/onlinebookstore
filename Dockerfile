FROM tomcat:9.0-jdk11

WORKDIR /usr/local/tomcat/webapps

COPY target/*.war ROOT.war

EXPOSE 8085

CMD ["catalina.sh", "run"]







# FROM eclipse-temurin:11-jdk
# WORKDIR app/
# EXPOSE 8085
# ENTRYPOINT ["java","-jar","onlinebookstore"]


