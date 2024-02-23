FROM openjdk:21
WORKDIR /springsecurityexampleusingtoyandbooklibapp
COPY pom.xml .
RUN mvn -f pom.xml package
COPY target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]