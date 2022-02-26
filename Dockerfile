# Get base image
FROM php:8.0-apache
# update image
RUN apt-get update
# enable lib for install intl
RUN apt-get install -y libicu-dev
# install intl
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
RUN docker-php-ext-enable intl