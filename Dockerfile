FROM tomcat:9.0-jdk16

# COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war /root/kakeibo.war

COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/kakeibo.war

CMD ["/usr/local/tomcat/webapps/catalina.sh", "run"]
