FROM php:apache

ADD https://git.io/vDz1T /tmp/pufferpanel.tar.gz
RUN tar -xf /tmp/pufferpanel.tar.gz -C / \
    && a2enmod rewrite