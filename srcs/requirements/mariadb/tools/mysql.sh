#!/bin/bash
service mysql start 

mysql -u root -e "CREATE DATABASE IF NOT EXISTS db;"
mysql -u root -e "CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'root';"
mysql -u root -e "GRANT ALL PRIVILEGES ON db.* TO 'user'@'%' ;"
#mysqld
