FROM spaceonfire/nginx-php-fpm:latest-7.4

ENV SOF_PRESET=single-entrypoint \
    WEBROOT=/var/www/html/public \
    PAGER=more

COPY composer.json composer.lock ./
RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --prefer-dist
COPY ./ ./
