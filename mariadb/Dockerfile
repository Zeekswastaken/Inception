FROM	debian:buster
RUN	apt-get update
RUN	apt-get install -y mariadb-server mariadb-client
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE	3306
COPY	./mysql.sh /etc/mysql.sh
RUN 	chmod +x /etc/mysql.sh && bash /etc/mysql.sh
CMD ["mysqld"]