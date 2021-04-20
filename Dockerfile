FROM php:7.3-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

# COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


ARG PUID=33
ARG PGID=33
# RUN groupmod -g $PGID www-data \
#     && usermod -u $PUID www-data

RUN chown -R www-data:www-data /var/www
RUN chmod 755 /var/www

# COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# CMD ["curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer"]
