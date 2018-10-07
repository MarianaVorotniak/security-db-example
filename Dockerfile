FROM openjdk:8
ADD target/security-db-example-0.0.1-SNAPSHOT security-db-example-0.0.1-SNAPSHOT
EXPOSE 8088
ENTRYPOINT ["java", "-jar", "security-db-example-0.0.1-SNAPSHOT"]