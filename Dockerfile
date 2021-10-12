FROM centos:7

RUN curl -O http://ftp.riken.jp/net/apache/tomcat/tomcat-9/v9.0.0.M21/bin/apache-tomcat-9.0.0.M21.tar.gz
&& tar zxf apache-tomcat-9.0.54.tar.gz
&& mv ~/apache-tomcat-9.0.0.M21 /opt

RUN yum install -y java

# COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war /opt/apache-tomcat-9.0.54/webapps/kakeibo.war

CMD ["catalina.sh", "run"]
