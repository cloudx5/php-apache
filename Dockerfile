FROM php:5.6-apache

RUN docker-php-ext-install \
	mysqli\
	pdo_mysql\
	&& docker-php-ext-enable \
	mysqli\
	pdo_mysql
