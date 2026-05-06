Script.sh

#!/bin/sh

echo "Hello from inside the Docker container!"
echo "Current date and time: $(date)"


DockerFile
FROM alpine:latest

WORKDIR /app

COPY script.sh .

RUN chmod +x script.sh

CMD ["sh","script.sh"]


vi Dockerfile
 vi script.sh
 docker build -t shell123 .
 docker run  shell123
 docker tag shell123:latest shell123:v1
 docker tag shell123:latest shell123:v2
 docker tag shell123:latest shell123:v3
 docker images
 docker rmi shell123:v2
 docker tag shell123:latest avigyan2212/shell_image123:latest
 docker push avigyan2212/shell_image123:latest
 history



