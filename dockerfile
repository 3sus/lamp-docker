# Dockerfile

FROM php:8.1.1-apache

# Install the mysqli extension
RUN docker-php-ext-install mysqli
