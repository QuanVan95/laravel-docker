FROM php:7.2-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apk update

RUN apk add libpng libpng-dev libjpeg-turbo-dev libwebp-dev libxpm-dev gd && docker-php-ext-install gd

RUN apk add --no-cache libzip-dev && docker-php-ext-configure zip --with-libzip=/usr/include && docker-php-ext-install zip


