FROM ubuntu:latest

COPY target/*.war /opt/tomcat/apache-tomcat-8.5.65/webapps/wayuparty.war
