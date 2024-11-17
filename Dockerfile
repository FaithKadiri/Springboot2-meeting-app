FROM openjdk:11
WORKDIR /app
COPY springboot2-meetingmng-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
