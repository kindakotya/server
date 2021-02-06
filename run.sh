docker build -t server .
docker run -it --name meow -p 80:80 server