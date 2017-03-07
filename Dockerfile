FROM php:apache

COPY config/pufferpanel.conf /etc/apache2/sites-enabled/000-default.conf
COPY config/pufferpanel.exp /tmp/pufferpanel.exp
ADD https://git.io/vDz1T /tmp/pufferpanel.tar.gz

RUN apt-get update \
    && apt-get -y install libmcrypt-dev mysql-client expect \
    && docker-php-ext-install -j$(nproc) mcrypt pdo pdo_mysql \    
    && tar -xf /tmp/pufferpanel.tar.gz -C /srv \
    && a2enmod rewrite \
    && chmod +x /tmp/pufferpanel.exp \
    && /tmp/pufferpanel.exp