FROM php:7.3-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql
# CMD ["curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer"]
