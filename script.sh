wget https://www.free-css.com/assets/files/free-css-templates/download/page290/wave-cafe.zip
unzip wave-cafe.zip && rm wave-cafe.zip
cp -r 2121_wave_cafe/* .
rm -rf 2121_wave_cafe

cat <<% > Dockerfile
FROM debian

RUN apt update && apt -y install apache2
WORKDIR /var/www/html
COPY . ./

EXPOSE 81
CMD apachectl -D FOREGROUND
%

cat <<% > README.md
# wavecafe
This is public repo for wavecafe with docker file to build image from debian apache2 and expose 81.

# Dockerize
## Build image
    docker build -t wavecafe .
## Test image
    docker run -d -p 81:81 wavecafe
**Open URL: localhost:81**
## Push to docker hub
    docker tag wavecafe reamea/wavecafe:0.0.1
    docker login
    docker push reamea/wavecafe:0.0.1
## Stop Docker run
    docker stop <CONTAINER ID>
    docker stop 6e72db6640a9
%

git status
git add .
git commit -m "Updated files"
git push origin main
