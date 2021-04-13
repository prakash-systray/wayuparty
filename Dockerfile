FROM ubuntu:latest

ADD ./target/wayuparty.war /opt/tomcat/apache-tomcat-8.5.65/webapps

EXPOSE 8080
