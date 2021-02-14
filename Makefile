# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmayweat <gmayweat@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/13 04:35:58 by gmayweat          #+#    #+#              #
#    Updated: 2021/02/14 22:52:21 by gmayweat         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	docker build -t server .
	docker run -it --name meow -p 80:80 -p 443:443 server
	#docker exec -it meow /bin/sh

clean:
	docker rm -f $$(docker ps -qa) | echo "fail"

di:
	docker rmi -f $$(docker images -q)

fclean: clean
	docker rmi -f $$(docker images -q)

re: clean all