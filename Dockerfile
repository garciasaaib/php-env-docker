FROM php:7.3-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

# COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# CMD ["curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer"]
