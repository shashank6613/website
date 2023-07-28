FROM ubuntu
RUN docker rm -f $( docker ps -a -q) && docker rmi $(docker images -q)
RUN sudo apt install apache2 -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
RUN docker container run -d -p 80:80 --name assignment5 assign5
