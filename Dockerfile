FROM php:7.3-apache
RUN apt-get update \
    && apt-get install -y git
RUN apt-get update \
    && apt-get install -y libpng-dev \
    && apt-get install -y libcurl4-openssl-dev
RUN docker-php-ext-install pdo pdo_mysql mysqli gd curl
RUN a2enmod rewrite
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=. --filename=composer
RUN mv composer /usr/local/bin
COPY src/ /var/www/html/
RUN service apache2 restart
EXPOSE 80