# FROM centos:7
FROM tomcat:9.0-jdk16

# RUN curl -O http://ftp.riken.jp/net/apache/tomcat/tomcat-9/v9.0.0.M21/bin/apache-tomcat-9.0.0.M21.tar.gz
# RUN tar zxvf apache-tomcat-9.0.0.M21.tar.gz
# RUN mv ~/apache-tomcat-9.0.0.M21 /opt

# RUN yum install -y java

COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/kakeibo.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
