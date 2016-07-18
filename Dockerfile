FROM php:5.6-apache

RUN a2enmod rewrite 

RUN docker-php-ext-install \
	mysqli\
	pdo_mysql\
	&& docker-php-ext-enable \
	mysqli\
	pdo_mysql

COPY *.ini /usr/local/etc/php/conf.d
