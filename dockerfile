FROM openjdk:8-alpine
# Required for starting application up.
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
COPY target/maven-web-application.jar /opt/app/maven-web-application.jar
WORKDIR $PROJECT_HOME
CMD ["java" ,"-jar","./maven-web-application.jar"]
