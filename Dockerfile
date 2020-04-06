FROM bitnami/wordpress:latest

USER root

RUN apt-get update && apt-get install -y \
    imagemagick \
    php-imagick \
    && rm -rf /var/lib/apt/lists/*
RUN echo "extension=imagick.so" >> /opt/bitnami/php/conf/php.ini

USER 1001
