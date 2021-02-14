# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmayweat <gmayweat@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/13 04:35:48 by gmayweat          #+#    #+#              #
#    Updated: 2021/02/15 01:21:28 by gmayweat         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

LABEL maintaner="gmayweat"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install nginx -y
RUN apt-get install default-mysql-server -y

RUN apt-get install php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring -y
WORKDIR /var/www/html/
RUN apt-get install wget -y
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english phpmyadmin


RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz && rm -rf latest.tar.gz
RUN apt-get install openssl -y
RUN openssl req -x509 -nodes -days 365 -subj \
    "/C=RU/ST=Moscow/L=Moscow/O=ecole42/OU=21shcool/CN=gmayweat" \
    -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;
COPY ./srcs/wp-config.php /var/www/html
COPY ./srcs/default /etc/nginx/sites-available
COPY ./srcs/config.inc.php phpmyadmin
COPY ./srcs/autoindex_switch.sh .
RUN chown -R www-data:www-data *
RUN chmod -R 755 /var/www/*
COPY ./srcs/cmd.sh .
RUN chmod 755 ./cmd.sh
CMD ./cmd.sh