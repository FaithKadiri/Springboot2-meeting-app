FROM openjdk:11

RUN apt-get update && apt-get install -y maven

WORKDIR /usr/src/myapp

COPY mvnw mvnw.cmd pom.xml /usr/src/myapp/

COPY src /usr/src/myapp/src

RUN ./mvnw clean install

EXPOSE 8080

CMD ["java", "-jar", "target/springboot2-meetingmng-0.0.1-SNAPSHOT.jar"]

COPY springboot2-meetingmng-0.0.1-SNAPSHOT.jar /app/app.jar

