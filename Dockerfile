FROM centos:7

RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.54/bin/apache-tomcat-9.0.54.tar.gz
RUN tar zxf apache-tomcat-9.0.54.tar.gz
RUN yum install -y java

COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war /opt/apache-tomcat-9.0.54/webapps/kakeibo.war

CMD ["catalina.sh", "run"]
