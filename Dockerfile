FROM maven:3.9.5-eclipse-temurin-25
WORKDIR /app
COPY . /app
RUN mvn clean package
EXPOSE 8080
CMD ["java", "-jar", "target/phisix.jar"]
