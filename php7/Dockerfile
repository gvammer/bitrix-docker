FROM bitrixdock/php71-fpm:latest

MAINTAINER vitams

ADD ./php.ini /etc/php/7.1/fpm/conf.d/90-php.ini
ADD ./php.ini /etc/php/7.1/cli/conf.d/90-php.ini

VOLUME ["/var/www"]

RUN apt-get update
RUN apt-get install -y phpunit composer
RUN usermod -u 1000 www-data

WORKDIR "/var/www"

EXPOSE 9000

