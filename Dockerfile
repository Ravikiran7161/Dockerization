FROM openjdk:8-jre-alpine
RUN mkdir -p opt/app/demo
COPY target/*.jar /opt/app/demo
RUN chmod -R 777 /opt
USER root
CMD ["java","-jar","/opt/app/demo/*.jar"]
EXPOSE 8080
