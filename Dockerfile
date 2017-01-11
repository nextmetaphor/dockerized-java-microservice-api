FROM nextmetaphor/alpine-java:latest
ADD java-microservice-api/build/libs/java-microservice-api.war /tmp/java-microservice-api.war
ENTRYPOINT java -jar /tmp/java-microservice-api.war