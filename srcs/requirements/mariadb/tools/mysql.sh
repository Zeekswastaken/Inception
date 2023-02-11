#!/bin/sh
service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS db ;"
mysql -u root -e "CREATE USER IF NOT EXISTS 'zouazahr'@'%' IDENTIFIED BY 'Testing2' ;"
mysql -u root -e "GRANT ALL PRIVILEGES ON db.* TO 'zouazahr'@'%' ;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;"
mysql -u root -p12345 -e "FLUSH PRIVILEGES;"

