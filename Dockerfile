FROM java
RUN apt-get update -y
RUN apt-get install wget -y
WORKDIR /opt
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.3/bin/apache-tomcat-8.5.3.tar.gz
RUN tar -xvf apache-tomcat-8.5.3.tar.gz
EXPOSE 8080
CMD ["/opt/apache-tomcat-8.5.3/bin/catalina.sh","run"]
