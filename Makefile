# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmayweat <gmayweat@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/13 04:35:58 by gmayweat          #+#    #+#              #
#    Updated: 2021/02/15 18:34:29 by gmayweat         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	docker build -t server .
	docker run -it --name meow -p 80:80 -p 443:443 server

clean:
	docker rm -f $$(docker ps -qa) | echo "meow"

di:
	docker rmi -f $$(docker images -q)

fclean: clean
	docker rmi -f $$(docker images -q)

re: clean all