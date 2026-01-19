

FROM tomcat:9.0-jdk11

LABEL app="onlinebookstore"
LABEL version="2.0"
LABEL maintainer="shahnawaz"

WORKDIR /usr/local/tomcat/webapps

COPY target/*.war ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]





# FROM tomcat:9.0-jdk11

# WORKDIR /usr/local/tomcat/webapps

# COPY target/*.war ROOT.war

# EXPOSE 8080

# CMD ["catalina.sh", "run"]







# FROM eclipse-temurin:11-jdk
# WORKDIR app/
# EXPOSE 8085
# ENTRYPOINT ["java","-jar","onlinebookstore"]


