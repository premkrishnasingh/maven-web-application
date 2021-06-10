FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/maven-web-application.jar /usr/local/lib/maven-web-application.jar
EXPOSE 80
ENTRYPOINT ["java","-jar","/usr/local/lib/maven-web-application.jar"]
