FROM php:7.1-apache

RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev

COPY server.crt /etc/apache2/ssl/server.crt
COPY server.key /etc/apache2/ssl/server.key
COPY httpd.conf /etc/apache2/sites-enabled/httpd.conf

RUN docker-php-ext-install mysqli pdo pdo_mysql zip mbstring

RUN a2enmod rewrite

RUN a2enmod ssl

RUN service apache2 restart