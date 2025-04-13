FROM openjdk:11-jre-slim

WORKDIR /app

COPY app/target/java-docker-app-1.0-jar-with-dependencies.jar app.jar

EXPOSE 9090

CMD ["java", "-jar", "app.jar"]
