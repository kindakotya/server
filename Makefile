all:
	docker build -t server .
	docker run -it --name meow -p 80:80 server
	#docker exec -it meow /bin/sh

clean:
	docker rm -f $$(docker ps -qa)

di:
	docker rmi -f $$(docker images -q)

fclean: clean
	docker rmi -f $$(docker images -q)

re: clean all