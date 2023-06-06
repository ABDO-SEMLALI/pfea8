FROM php:7.2-apache

RUN apt-get update && \
    docker-php-ext-install pdo_mysql mysqli && \
    docker-php-ext-enable pdo_mysql mysqli

COPY ./src /var/www/html

EXPOSE 80

# Download PHP Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set ownership of the files to the Apache user
RUN chown -R www-data:www-data /var/www/html \
    && a2enmod rewrite



