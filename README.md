# wavecafe 0.0.1
This is public repo for wavecafe with docker file to build image from debian apache2 and expose 80.

# Dockerize
## Build image
    docker build -t wavecafe .
## Test image
    docker run -d -p 81:80 wavecafe
**Open URL: localhost:81**
## Push to docker hub
    docker tag wavecafe reamea/wavecafe:0.0.1
    docker login
    docker push reamea/wavecafe:0.0.1
## Stop Docker run
    docker stop <CONTAINER ID>
    docker stop 6e72db6640a9

# wavecafe 0.0.2
Wavecafe 0.0.2 is change apache2 port from 80 to 81.

# Dockerize
## Build image
    docker build -t wavecafe .
## Test image
    docker run -d -p 81:81 wavecafe
**Open URL: localhost:81**
## Push to docker hub
    docker tag wavecafe reamea/wavecafe:0.0.2
    docker login
    docker push reamea/wavecafe:0.0.2
## Stop Docker run
    docker stop <CONTAINER ID>
    docker stop 6e72db6640a9
