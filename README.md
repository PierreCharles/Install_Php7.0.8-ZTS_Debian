# Install_Php7.0.8-ZTS_Debian8

##Install

git clone https://github.com/PierreCharles/Install_Php7.0.8-ZTS_Debian8.git

./install.sh

#Information

The execution time of the script is approximately 30 minutes to 1 hour

Configuration :

		--prefix=/usr/local/php7 \
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
