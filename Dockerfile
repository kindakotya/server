FROM debian:buster

LABEL maintaner="gmayweat"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install nginx -y
RUN apt-get -y install default-mysql-server
RUN apt install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

# RUN mysqld
# RUN mkdir /var/run/mysqld
# RUN mkfifo /var/run/mysqld/mysqld.sock
# RUN chown -R mysql /var/run/mysqld
# RUN chmod 755 /var/run/mysqld/mysqld.sock
#RUN apt-get install mariadb-server -y
#COPY ./srcs/wp-config.php /var/www/wordpress/wp-config.php
COPY ./cmd.sh .
RUN chmod 755 ./cmd.sh
CMD ./cmd.sh
#RUN apt-get install php7.0-mysql -y
#RUN openssl req -x509 -nodes -newkey rsa:2048 -days 365 -keyout /home/ssl/my_key.key -out /home/ssl/my_cert.crt
#EXPOSE 8080
