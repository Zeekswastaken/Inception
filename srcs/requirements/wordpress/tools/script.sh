#!/bin/bash

sleep 1
wp core download --allow-root

sed -i "s/username_here/$MYSQL_USER/g" wp-config-sample.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config-sample.php
sed -i "s/localhost/$MYSQL_HOSTNAME/g" wp-config-sample.php
sed -i "s/database_name_here/$MYSQL_DATABASE/g" wp-config-sample.php
cp wp-config-sample.php wp-config.php
chown -R www-data:www-data /var/www/* && mkdir -p /run/php && chmod -R +x /var/www/*
wp core install --url=localhost --title="Testing" --admin_user=zouazahr --admin_password=Testing2 --admin_email=info@example.com --allow-root

php-fpm7.3 --nodaemonize
