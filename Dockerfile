FROM openjdk:11

COPY ./target/kakeibo-0.0.1-SNAPSHOT.jar /root/kakeibo.jar

CMD [ "sh", "-c", "java $JAVA_OPTIONS -jar /root/kakeibo.jar" ]
