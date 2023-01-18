FROM debian:buster
RUN apt-get update && apt-get install -y curl wget unzip php7.3 php7.3-mysql php7.3-fpm
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
  && chmod +x wp-cli.phar \
  && mv wp-cli.phar /usr/local/bin/wp
COPY	./config	/etc/php/7.3/fpm/php-fpm.conf
RUN mkdir /run/php
COPY ./script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
WORKDIR /var/www/html
RUN rm -rf /var/www/html/
CMD ["/usr/local/bin/script.sh"]