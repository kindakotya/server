FROM debian:buster

LABEL maintaner="gmayweat"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install nginx -y
RUN apt-get install mariadb-server -y
RUN apt-get install mysql-server -y
RUN nginx
#RUN apt-get install php7.0-mysql -y
#RUN openssl req -x509 -nodes -newkey rsa:2048 -days 365 -keyout /home/ssl/my_key.key -out /home/ssl/my_cert.crt
#EXPOSE 8080