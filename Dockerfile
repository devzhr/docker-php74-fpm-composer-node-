FROM bitnami/php-fpm:7.4.29

RUN apt-get update && apt-get install -y nodejs npm && apt-get install -y lftp && apt-get install zip unzip
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
#WORKDIR is /var/www/html
COPY . /var/www/html/
RUN npm install && node --version