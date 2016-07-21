## Installation of php7.0.8 (ZTS) on Debian 8

These are a set of bash scripts for building and running PHP 7 (CLI and FPM) on Debian based Linux distributions compiling for using pthreads extention to use workers.

- `configure.sh` installs the necessary build dependencies and the latest development version of PHP with CLI and FPM server APIs (SAPI) from the PHP 7.0.8 version branch of https://github.com/php/php-src.

- `install.sh` sets up PHP-FPM by moving configuration files into their correct locations in `/usr/local/php7` and enables the `php7-fpm` service and adds it to the startup sequence.

- `pthread.sh` (optional) install and configure pthread extention using pecl. The script will copy the php.ini file to "cli" `/usr/local/php7/lib/php-cli.ini` then integrate the extension.

## Usage

	$ git clone https://github.com/PierreCharles/Install_Php7.0.8-ZTS_Debian8.git
	$ cd Install_Php7.0.8-ZTS_Debian8
	$ ./configure.sh
	$ ./install.sh
	$ ./pthreads **(Optional)** (Just press enter to choose the default config)

The PHP-FPM can be operated using the `php7-fpm` init script:

	Usage: /etc/init.d/php7-fpm {start|stop|status|restart|reload|force-reload}

while the FPM socket is available at

	/var/run/php7.0-fpm.sock`

and PHP CLI:

	$ php -v
	PHP 7.0.8 (cli) (built: Jul 21 2016 12:12:20) ( ZTS )
	Copyright (c) 1997-2016 The PHP Group
	Zend Engine v3.0.0, Copyright (c) 1998-2016 Zend Technologies
    	     with Zend OPcache v7.0.8, Copyright (c) 1999-2016, by Zend Technologies


## Configuration files

All PHP configuration files are stored under `/usr/local/php7`:

	/usr/local/php7/lib/php.ini
	/usr/local/php7/etc/php-fpm.conf
	/usr/local/php7/etc/php-fpm.d/www.conf
	/usr/local/php7/etc/conf.d/modules.ini

while the Debian init script is added to:

	/etc/init.d/php7-fpm

## Configuration :

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








