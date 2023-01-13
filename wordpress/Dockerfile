FROM debian:buster
RUN apt-get update && apt-get install -y curl wget unzip php7.3 php7.3-mysql php7.3-fpm
EXPOSE 9000
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
RUN rm -rf /var/www/html/
COPY	./config	/etc/php/7.3/fpm/php-fpm.conf
COPY	./config.php	./wp-config.php
RUN chown -R www-data:www-data /var/www/* && mkdir -p /run/php && chmod -R +x /var/www/*
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN rm latest.tar.gz
RUN mv wordpress/* ./
#RUN cp -r wordpress/* .
CMD ["php-fpm7.3", "--nodaemonize"]