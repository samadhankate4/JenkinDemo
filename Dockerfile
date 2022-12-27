FROM openjdk:17-jdk-slim
EXPOSE 8080
ARG APP_NAME="JenkinDemo"
ARG APP_VERSION="0.0.1"
ARG JAR_FILE="target/${APP_NAME}-${APP_VERSION}-SNAPSHOT.jar"
COPY ${JAR_FILE} app.jar
#CMD java -jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
#docker run -t jenkindemo
#docker run -p 8080:8080 jenkindemo