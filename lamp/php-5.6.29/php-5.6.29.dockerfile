# https://hub.docker.com/layers/library/php/7.0-apache/images/sha256-aa67a9c9814fb920a3aa01122b56010ddf1130710caf71a8871a0f1dbb4d78fd?context=explore
FROM php:5.6.20-apache AS php5.6.2-apache
# RUN apt-get update && \
# apt-get install vim wget python3 python3-pip iputils-ping libcurl4-gnutls-dev zlib1g-dev libmemcached-dev librabbitmq-dev libpng-dev libxml2-dev libbz2-dev libxslt-dev libldap2-dev libgmp3-dev -y
# RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini" && \
# pecl channel-update pecl.php.net && \
# pear config-set php_ini "$PHP_INI_DIR/php.ini" && \
# pecl install msgpack && \
# pecl install memcached && \
# pecl install https://pecl.php.net/get/yar-2.1.0.tgz && \
# pecl install amqp && \
# pecl install https://pecl.php.net/get/memcache-4.0.5.2.tgz && \
# pip3 install requests beautifulsoup4 lxml && \
# echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
# docker-php-ext-install mysqli pdo_mysql gd soap sockets bz2 xsl exif gmp

# iputils-ping --ping命令依赖
# zlib1g-dev --memcache依赖
# libmemcached-dev --memcached依赖
# libcurl4-gnutls-dev --yar依赖
# librabbitmq-dev --amqb依赖
# libpng-dev --gd依赖
# libxml2-dev --soap依赖
# libbz2-dev --bz2依赖
# libxslt-dev --xsl依赖
# libgmp3-dev --gmp依赖
