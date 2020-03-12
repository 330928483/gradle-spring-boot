FROM java:openjdk-8-jre-alpine

RUN mkdir -p /opt/project
WORKDIR /opt/project
ADD /root/gradle-spring-boot/build/libs/*.jar /opt/project/app.jar
ADD ./start.sh /opt/project
RUN chmod +x start.sh

EXPOSE 8080
ENTRYPOINT ["sh", "start.sh"]

