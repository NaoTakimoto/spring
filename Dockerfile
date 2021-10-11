FROM tomcat：9.0-jdk16-openjdk

# COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war /root/kakeibo.war

COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/kakeibo.war

CMD ["catalina.sh", "run"]
