FROM openjdk:8-jre-alpine
RUN mkdir -p opt/app/demo
COPY target/*.jar /opt/app/demo/ 
RUN chmod -R 777 /opt
USER root
WORKDIR /opt/app/demo/
CMD ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
