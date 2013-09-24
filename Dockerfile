FROM andyvanee/nginx

# Build the site.
ADD . /var/www
RUN cd /var/www && bin/composer install
RUN cat /var/www/nginx.conf > /etc/nginx/sites-available/default

EXPOSE 80

CMD service php5-fpm start && nginx
