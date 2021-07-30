FROM composer as build
WORKDIR /app
RUN composer init --name utilspackagesinternal/rector && composer require rector/rector --dev

FROM php
WORKDIR /app
RUN apt-get update && apt-get install -y libicu-dev && apt-get clean && docker-php-ext-install intl
COPY --from=build /app/vendor /app/vendor
ENTRYPOINT ["/app/vendor/bin/rector"]
