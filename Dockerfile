FROM tomcat:9.0-jdk16

RUN apt-get install postgresql-client

COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/kakeibo.war

CMD ["catalina.sh", "run"]
