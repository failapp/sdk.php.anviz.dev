FROM php:7.2.0-apache

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-utils dialog 2>&1

# instalar extension soap ..
RUN apt-get install -y libxml2-dev
RUN docker-php-ext-install soap

# instalar extension mcrypt ..
RUN apt-get install -y libmcrypt-dev
RUN pecl install mcrypt-1.0.1
RUN docker-php-ext-enable mcrypt

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite


