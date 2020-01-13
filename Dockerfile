FROM adoptopenjdk:8-openj9

WORKDIR /app

COPY target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar .

CMD ["java", "-jar", "spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]
