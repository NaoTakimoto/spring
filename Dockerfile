FROM tomcat:9.0.1-alpine

COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.jar /root/kakeibo.jar
COPY ./src/main/webapp/META-INF/maven/kakeibo/kakeibo/target/kakeibo-0.0.1-SNAPSHOT.jar $CATALINA_HOME/webapps/kakeibo.jar

CMD ["catalina.sh", "run"]
