#!/bin/sh
service mysql start
echo "CREATE DATABASE IF NOT EXISTS db ;" > db1.sql
echo "CREATE USER IF NOT EXISTS 'zouazahr'@'%' IDENTIFIED BY 'Testing2' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON db.* TO 'zouazahr'@'%' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql
mysql < db1.sql
kill $(cat /var/run/mysqld/mysqld.pid)

mysqld