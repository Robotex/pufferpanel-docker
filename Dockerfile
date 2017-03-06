FROM php:apache

ADD https://git.io/vDz1T /tmp/pufferpanel.tar.gz
RUN tar -xf -C /var/www/html/ /tmp/pufferpanel.tar.gz