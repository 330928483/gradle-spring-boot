FROM java:openjdk-8-jre-alpine

RUN mkdir -p /opt/project
WORKDIR /opt/project
ARG JAR_FILE=/root/gradle-spring-boot/build/libs/*.jar
COPY ${JAR_FILE} /opt/project/app.jar
COPY /root/gradle-spring-boot/config/docker/start.sh /opt/project/start.sh
RUN chmod +x start.sh

EXPOSE 8080
ENTRYPOINT ["sh", "start.sh"]

