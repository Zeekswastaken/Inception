FROM debian:buster
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install openssl -y
COPY ./nginx.conf  /etc/nginx/nginx.conf
RUN mkdir /etc/nginx/ssl
WORKDIR /etc/nginx/ssl/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout localhost.key -out localhost.crt -subj '/C=MA/ST=MA/L=Benguerir/O=yousmell/OU=IT/CN=mydomain.com'
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]