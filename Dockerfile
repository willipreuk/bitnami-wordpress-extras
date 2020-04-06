FROM bitnami/wordpress:latest

USER root

RUN apt-get update && apt-get install -y \
    imagemagick \
    php-imagick \
    && rm -rf /var/lib/apt/lists/*

USER 1001
