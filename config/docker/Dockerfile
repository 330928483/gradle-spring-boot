FROM java:openjdk-8-jre-alpine

RUN mkdir -p /opt/project
WORKDIR /opt/project
ARG JAR_FILE
ADD ${JAR_FILE} /opt/project/app.jar
ADD ./start.sh /opt/project

EXPOSE 8080
ENTRYPOINT ["sh", "start.sh"]

