 docker run -p 8080:8080 my-spring-app  
  docker build -t my-spring-app . 




docker build -t <image_name> .: Builds a Docker image from a Dockerfile in the current directory.
docker pull <image_name>: Downloads an image from a registry, such as Docker Hub.
docker images or docker image ls: Lists locally stored images.
docker push <username>/<image_name>: Uploads a local image to Docker Hub.
docker rmi <image_name>: Removes a local image.
docker search <image_name>: Searches Docker Hub for a specific image. 
docker ps: List only running containers
docker ps -a: List all containers
docker --version
docker build -t image_name .   :  Build an Image from Dockerfile     EG:-> docker build -t todo-app .
docker run image_name    : Runs a Container
docker run -it image_name  : Run Container in Interactive Mode
docker run -d image_name  :  docker run -d image_name
docker run -d --name container_name image_name: Run Container with Name
docker run -p host_port:container_port image_name   :  Map Ports Between Host and Container Example: docker run -p 8080:80 nginx
docker stop container_name : Stop a Container
docker start container_name
docker restart container_name
docker logs container_name : View Container Logs
docker exec -it container_name bash : Execute Command Inside Container
docker volume ls
docker volume create volume_name
docker volume rm volume_name

docker image prune  : Remove Unused Images
docker system prune : Removes unused containers, networks, images, and build cache.


# TO run in docker env using image
  docker cp target/NAME_OF_JAR.jar  CONTAINER_NAME:/tmp






# Use the official Eclipse Temurin image for Java 21 on Alpine
FROM eclipse-temurin:21-jdk-alpine
 # Define the location of your JAR file
ARG JAR_FILE=target/*.jar
  # Copy the JAR into the container
COPY ${JAR_FILE} app.jar
  # Expose the standard Spring Boot port
EXPOSE 8080
   # Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
