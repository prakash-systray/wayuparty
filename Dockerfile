FROM ubuntu:latest

ADD /opt/wayuparty/target/wayuparty.war /opt/tomcat/apache-tomcat-8.5.65/webapps
