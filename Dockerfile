FROM php:7.1-fpm

ENV PHALCON_VERSION=3.3.2

RUN apt-get update && buildDeps="libpq-dev libzip-dev libjpeg62-turbo libjpeg-dev libpng-dev" \
    && apt-get install -y $buildDeps git nano wget cron libxrender1 libfontconfig1 libxext6 libicu-dev --no-install-recommends \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*z
RUN docker-php-ext-install pdo mysqli pdo pdo_mysql zip gd intl
RUN pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini
RUN wget https://getcomposer.org/composer.phar && mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer

RUN curl -sSL "https://codeload.github.com/phalcon/cphalcon/tar.gz/v${PHALCON_VERSION}" | tar -xz \
    && cd cphalcon-${PHALCON_VERSION}/build \
    && ./install \
    && cp ../tests/_ci/phalcon.ini $(php-config --configure-options | grep -o "with-config-file-scan-dir=\([^ ]*\)" | awk -F'=' '{print $2}') \
    && cd ../../ \
&& rm -r cphalcon-${PHALCON_VERSION}

ADD docker/fpm/php.ini /usr/local/etc/php/php.ini

COPY . /var/www
WORKDIR /var/www

COPY docker/fpm/entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["php-fpm"]




