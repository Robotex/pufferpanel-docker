FROM php:apache

ADD https://git.io/vDz1T /tmp/pufferpanel.tar.gz
RUN tar -xf /tmp/pufferpanel.tar.gz -C /srv \
    && a2enmod rewrite