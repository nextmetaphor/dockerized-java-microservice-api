#!/usr/bin/env bash
docker build base-docker-image -t nextmetaphor/alpine-java
gradle clean build -b java-microservice-api/build.gradle
docker build . -t nextmetaphor/java-microservice-api