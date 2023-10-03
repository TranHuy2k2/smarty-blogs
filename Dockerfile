FROM php:8.2-cli

# Install dependencies for container
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    libzip-dev \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl

RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./ /var/www/html/

# Set working directory to /app

WORKDIR /app


# Copy composer.lock and composer.json

COPY composer.json /app/composer.json

COPY composer.lock /app/composer.lock

RUN composer install

# Dump autoloader
RUN composer dump-autoload


COPY . .

EXPOSE 3000

CMD [ "php", "-S", "0.0.0.0:3000" ]