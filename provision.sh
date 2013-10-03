#!/bin/bash

rm -rf /var/www && ln -s /app /var/www

chown -R root:root /var/www

cat /var/www/nginx.conf > /etc/nginx/sites-available/default

# start or reload nginx
if [[ -f /run/nginx.pid ]] ; then
  nginx -s reload
else
  nginx
fi

# cd /var/www && bin/composer install
# chown -R www-data:www-data /var/www/public_html/upload
# chown -R www-data:www-data /var/www/var/
# rm -f /var/www/public_html/nterchange && ln -s /var/www/vendor/nterchange3/nterchange /var/www/public_html/nterchange
