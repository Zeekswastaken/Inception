#!/bin/bash

sleep 1
wp core download --allow-root

sed -i "s/username_here/$MYSQL_USER/g" wp-config-sample.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config-sample.php
sed -i "s/localhost/$MYSQL_HOSTNAME/g" wp-config-sample.php
sed -i "s/database_name_here/$MYSQL_DATABASE/g" wp-config-sample.php
cp wp-config-sample.php wp-config.php
wp core install --url=$DOMAIN_NAME --title=Testing --admin_user=$MYSQL_USER --admin_password=$MYSQL_PASSWORD --admin_email=info@example.com --allow-root
wp user create test test@test.com --user_pass=test --role=author --allow-root

php-fpm7.3 --nodaemonize
