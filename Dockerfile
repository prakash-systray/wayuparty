FROM tomcat-8.5.65

ADD ./target/wayuparty.war /opt/tomcat/apache-tomcat-8.5.65/webapps

EXPOSE 8080
