FROM java:openjdk-8-jre-alpine

RUN mkdir -p /opt/project
COPY build/libs/*.jar /opt/project/app.jar
COPY start.sh /opt/project/start.sh
WORKDIR /opt/project
RUN chmod +x start.sh

EXPOSE 8080
ENTRYPOINT ["sh", "start.sh"]

