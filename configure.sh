#!/bin/bash
cd "$(dirname "$0")"

# Dependencies
apt-get update
apt-get install -y \
    build-essential \
    pkg-config \
    git-core \
    autoconf \
    bison \
    libxml2-dev \
    libbz2-dev \
    libmcrypt-dev \
    libicu-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libltdl-dev \
    libjpeg-dev \
    libpng-dev \
    libpspell-dev \
    libreadline-dev

#Clone php version
mkdir -p /usr/local/php7
git clone https://github.com/php/php-src.git
cd php-src
git checkout PHP-7.0.8
git pull

./buildconf --force

#Configuration string
CONFIGURE_STRING="--prefix=/usr/local/php7 \
                  --with-config-file-scan-dir=/usr/local/php7/etc/conf.d \
		  --enable-bcmath \
                  --enable-calendar \
                  --enable-exif \
                  --enable-dba \
                  --enable-ftp \
                  --with-gettext \
                  --with-gd \
                  --with-jpeg-dir \
                  --enable-mbstring \
                  --with-mcrypt \
                  --with-mhash \
                  --enable-opcache \
		  --enable-mysqlnd \
                  --with-mysql=mysqlnd \
                  --with-mysqli=mysqlnd \
                  --with-pdo-mysql=mysqlnd \
                  --with-mysql-sock=/var/run/mysqld/mysqld.sock \
		  --with-openssl \
                  --enable-pcntl \
                  --enable-soap \
                  --enable-sockets \
                  --enable-sysvmsg \
                  --enable-sysvsem \
                  --enable-sysvshm \
                  --with-zlib \
                  --enable-zip \
                  --with-readline \
                  --with-curl \
		  --enable-shmop \
		  --enable-fpm \
                  --enable-maintainer-zts \
    		  --enable-pthreads=shared \
    		  --with-tsrm-pthreads \
		  --enable-fastcgi \
 		  --with-fpm-user=www-data \
                  --with-fpm-group=www-data"

./configure $CONFIGURE_STRING

#Make
make
make install
