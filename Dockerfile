FROM ubuntu
MAINTAINER 591592159@qq.com
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
COPY ./sources.list /etc/apt/sources.list
COPY ./start.sh /start.sh
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get remove --purge apache2
RUN apt-get -y install php7.2
RUN apt-get -y install php7.2-mysql
RUN apt-get -y install php7.2-fpm
RUN apt-get install -y php7.2-curl php7.2-xml php7.2-bcmath php7.2-json php7.2-gd php7.2-mbstring php7.2-intl php7.2-zip
RUN apt-get -y install nginx
RUN mkdir -p /run/php
VOLUME /var/www
VOLUME /etc/nginx/sites-enabled
EXPOSE 80
CMD ["sh","start.sh"]