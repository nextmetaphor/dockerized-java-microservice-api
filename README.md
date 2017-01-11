# Dockerized Java Microservice API #
Demonstrates how to use a bash script to build a simple Java microservice API and then build this into a Docker image. The microservice API is a git submodule referencing [https://github.com/nextmetaphor/java-microservice-api](https://github.com/nextmetaphor/java-microservice-api) in the `java-microservice-api` directory; the base Docker image is a git module referencing [https://github.com/nextmetaphor/dockerized-alpine-java](https://github.com/nextmetaphor/dockerized-alpine-java) in the `base-docker-image` directory. Refer to these repositories for more information around how each is configured. 

***

## Getting Started 
The instructions below detail the pre-requisite technologies; together with installation, deployment and validation steps for a simple Java-based microservice hosted using Docker.

### Prerequisites
* [Java 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
* [Gradle](https://gradle.org/getting-started-gradle-java/#toggle-id-1)
* [Docker](https://www.docker.com/products/overview#/install_the_platform)

### Installing
Clone this repository, then run the following command from the repository root directory...

    bash build.sh

Once this has completed, verify that the image has been built by running the following command...

    docker images | grep nextmetaphor/java-microservice-api

If the image has built successfully, the output should be something similar to that below...

    nextmetaphor/java-microservice-api   latest              dd65942dc93a        21 hours ago        115 MB

## Deployment
The API can be started by executing the following command...

    docker run -d --name=java-microservice-api -p 8080:8080 nextmetaphor/java-microservice-api

Verify that there is a running container for this image...

    docker ps

The output should be something similar to that below...

    CONTAINER ID        IMAGE                                COMMAND                  CREATED             STATUS              PORTS                    NAMES
    b41a677c8d43        nextmetaphor/java-microservice-api   "/bin/sh -c 'java ..."   21 hours ago        Up About a minute   0.0.0.0:8080->8080/tcp   java-microservice-api

Additionally, check the logs of the running container with the command below...

    docker logs java-microservice-api

The final couple of lines of the eventual output should be similar to the following...

    2017-01-10 17:40:28.206  INFO 14021 --- [           main] .s.b.c.e.j.JettyEmbeddedServletContainer : Jetty started on port(s) 8080 (http/1.1)
    2017-01-10 17:40:28.209  INFO 14021 --- [           main] io.nextmetaphor.application.Application  : Started Application in 2.457 seconds (JVM running for 2.798)

## Validation ##
Follow the steps detailed in the [https://github.com/nextmetaphor/java-microservice-api](https://github.com/nextmetaphor/java-microservice-api) to validate the API is functioning correctly.

## Licence ##
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
