FROM php:8.0-apache

# Installer les dépendances nécessaires
RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Installer Adminer
RUN curl -o /var/www/html/adminer.php https://www.adminer.org/latest.php

EXPOSE 80
