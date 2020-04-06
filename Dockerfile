FROM bitnami/wordpress:latest

RUN apt-get update && apt-get install -y \
    imagemagick \
    php-imagick \
    && rm -rf /var/lib/apt/lists/*
