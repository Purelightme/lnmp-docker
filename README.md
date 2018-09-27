# lnmp-docker
搭建docker linp环境 

- ``` docker build -t lnmp:v1 .``` 

- ``` docker run -it -p 8089:80 -v /Users/purelightme/docker-proj/images/first/www:/var/www -v /Users/purelightme/docker-proj/images/first/sites-enabled:/etc/nginx/sites-enabled f1dc313fabf3``` 

- 访问本机127.0.0.1:8089