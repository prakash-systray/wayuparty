FROM ubuntu:latest
COPY target/*.war /usr/local/tomcat/webapps/wayuparty.war
