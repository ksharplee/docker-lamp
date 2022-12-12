FROM php:7.4.29-apache AS php-apache
RUN apt-get update && \
apt-get install vim wget python3 iputils-ping libcurl4-gnutls-dev zlib1g-dev libmemcached-dev librabbitmq-dev libpng-dev libxml2-dev libbz2-dev libxslt-dev libldap2-dev libgmp3-dev -y && \
cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini" && \
pecl channel-update pecl.php.net && \
pear config-set php_ini "$PHP_INI_DIR/php.ini" && \
pecl install msgpack && \
# pecl install memcache && \
pecl install memcached && \
pecl install yar && \
pecl install amqp && \
docker-php-ext-install mysqli pdo_mysql gd soap sockets bz2 xsl exif ldap gmp
RUN  cd /home && \
wget https://pecl.php.net/get/memcache-4.0.5.2.tgz && \
tar zxvf memcache-4.0.5.2.tgz && \
cd memcache-4.0.5.2 && \
/usr/local/bin/phpize && \
./configure --with-php-config=/usr/local/bin/php-config && \
make && make install && \
echo 'extension="memcache"' >> /usr/local/etc/php/php.ini

# iputils-ping --ping命令依赖
# zlib1g-dev --memcache依赖
# libmemcached-dev --memcached依赖
# libcurl4-gnutls-dev --yar依赖
# librabbitmq-dev --amqb依赖
# libpng-dev --gd依赖
# libxml2-dev --soap依赖
# libbz2-dev --bz2依赖
# libxslt-dev --xsl依赖
# libldap2-dev --ldap依赖
# libgmp3-dev --gmp依赖
