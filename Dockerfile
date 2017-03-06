FROM php:apache

COPY config/pufferpanel.conf /etc/apache2/sites-enabled/000-default.conf
ADD https://git.io/vDz1T /tmp/pufferpanel.tar.gz

RUN tar -xf /tmp/pufferpanel.tar.gz -C /srv \
    && a2enmod rewrite