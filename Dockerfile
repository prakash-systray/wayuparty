FROM tomcat-8.5.65

ADD ./target/wayuparty.war /opt/tomcat/apache-tomcat-8.5.65/webapps
RUN apt install wget -y

EXPOSE 8080
