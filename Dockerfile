FROM openjdk:17-jdk-slim

#ARG ARG_BRANCH
#ENV BRANCH=${ARG_BRANCH}

ARG JAR_FILE_PATH=build/libs/spring-petclinic-data-jdbc-3.0.0.BUILD-SNAPSHOT.jar
COPY ${JAR_FILE_PATH} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
