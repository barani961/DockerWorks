Spring Boot Docker Setup Guide

This project demonstrates how to build and run a Spring Boot application using Docker.

1. Build the Docker Image

First, create a Docker image from the Dockerfile.

docker build -t my-spring-app .

Explanation

docker build → builds an image from the Dockerfile

-t my-spring-app → assigns a name (tag) to the image

. → tells Docker to use the current directory

2. Run the Docker Container

Run the container from the created image.

docker run -p 8080:8080 my-spring-app

Explanation

docker run → creates and starts a container

-p 8080:8080 → maps host port 8080 to container port 8080

my-spring-app → the image name

After running, the application will be available at:

http://localhost:8080
Docker Commands Reference
Docker Installation

Check if Docker is installed.

docker --version
Image Commands
Build Image from Dockerfile
docker build -t image_name .

Example:

docker build -t todo-app .

Builds a Docker image using the Dockerfile in the current directory.

Pull Image from Docker Hub
docker pull <image_name>

Example

docker pull nginx

Downloads an image from Docker Hub.

List Docker Images
docker images

or

docker image ls

Displays all images stored locally.

Push Image to Docker Hub
docker push <username>/<image_name>

Uploads an image to Docker Hub.

Remove an Image
docker rmi <image_name>

Deletes an image from the local system.

Search Images on Docker Hub
docker search <image_name>

Searches for images available in Docker Hub.

Container Commands
List Running Containers
docker ps

Shows only running containers.

List All Containers
docker ps -a

Shows running and stopped containers.

Run a Container
docker run image_name

Creates and runs a container from an image.

Run Container in Interactive Mode
docker run -it image_name

Starts a container with an interactive terminal.

Run Container in Background
docker run
a single copy to all things so i can just copy paste

Here is a clean, well-structured README content you can copy and paste directly into your README.md for GitHub. I organized it so someone opening your repo can understand the project, build the Docker image, run the container, and see useful Docker commands.

Spring Boot Application Docker Setup

This project demonstrates how to containerize and run a Spring Boot application using Docker.

Docker allows the application to run in an isolated environment with all required dependencies.

Build the Docker Image

Build the Docker image from the Dockerfile in the current directory.

docker build -t my-spring-app .

Explanation

docker build → builds an image from the Dockerfile

-t my-spring-app → assigns a name (tag) to the image

. → uses the current directory as the build context

Run the Docker Container

Run a container using the created image.

docker run -p 8080:8080 my-spring-app

Explanation

docker run → creates and starts a container

-p 8080:8080 → maps host port 8080 to container port 8080

my-spring-app → the image name

After running the container, the application will be available at:

http://localhost:8080
Dockerfile Used in This Project
# Use the official Eclipse Temurin image for Java 21 on Alpine
FROM eclipse-temurin:21-jdk-alpine

# Define the location of your JAR file
ARG JAR_FILE=target/*.jar

# Copy the JAR into the container
COPY ${JAR_FILE} app.jar

# Expose the Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]

Explanation

FROM → base image containing Java runtime

ARG → defines the location of the compiled JAR file

COPY → copies the JAR into the container

EXPOSE → exposes port 8080

ENTRYPOINT → command used to start the application

Common Docker Commands
Docker Installation

Check Docker installation.

docker --version
Image Commands

Build an image from a Dockerfile.

docker build -t image_name .

Example

docker build -t todo-app .

Download an image from Docker Hub.

docker pull <image_name>

Example

docker pull nginx

List all locally stored images.

docker images

or

docker image ls

Push an image to Docker Hub.

docker push <username>/<image_name>

Remove a local image.

docker rmi <image_name>

Search images on Docker Hub.

docker search <image_name>
Container Commands

List running containers.

docker ps

List all containers (running and stopped).

docker ps -a

Run a container.

docker run image_name

Run a container in interactive mode.

docker run -it image_name

Run a container in detached (background) mode.

docker run -d image_name

Run a container with a custom name.

docker run -d --name container_name image_name

Map host port to container port.

docker run -p host_port:container_port image_name

Example

docker run -p 8080:80 nginx

Stop a running container.

docker stop container_name

Start a stopped container.

docker start container_name

Restart a container.

docker restart container_name

View container logs.

docker logs container_name

Execute a command inside a running container.

docker exec -it container_name bash
Docker Volume Commands

List volumes.

docker volume ls

Create a volume.

docker volume create volume_name

Remove a volume.

docker volume rm volume_name
Cleanup Commands

Remove unused images.

docker image prune

Remove unused containers, images, networks, and cache.

docker system prune
Copy JAR File Into a Running Container
docker cp target/NAME_OF_JAR.jar CONTAINER_NAME:/tmp

Explanation

docker cp → copies files between host and container

target/NAME_OF_JAR.jar → location of the compiled JAR file

CONTAINER_NAME:/tmp → destination inside the container


docker exec  boring_chandrasekhar ls /tmp -> list all dir in tmp from an image boring_chandra , see im using  eclipse-temurin:21-jdk-alpine
