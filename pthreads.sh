#!/bin/bash
cd "$(dirname "$0")"

wget http://pear.php.net/go-pear.phar
php go-pear.phar
pecl install pthreads
cp /usr/local/php7/lib/php.ini /usr/local/php7/lib/php-cli.ini
echo "extension=/usr/local/php7/lib/php/extensions/no-debug-zts-20151012/pthreads.so" >> /usr/local/php7/lib/php-cli.ini




