FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y  wget unzip git -y
RUN wget https://oraclemirror.np.gy/jdk8/jdk-8u261-linux-x64.tar.gz

COPY target/wayuparty.war /usr/local/tomcat/apache-tomcat-8.5.64/webapps/wayuparty.war
