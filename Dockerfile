FROM tomcat:9.0.1-alpine

COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war /root/kakeibo.war
COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.war $CATALINA_HOME/webapps/kakeibo.war

CMD ["catalina.sh", "run"]
