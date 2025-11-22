FROM eclipse-temurin:25-jdk
WORKDIR /app
COPY . /app
RUN mvn clean package
EXPOSE 8080
CMD ["java", "-jar", "target/phisix.jar"]
