FROM php:7.4-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY . /var/www/html/
ENV DB_HOST='mysql-service'
EXPOSE 80
