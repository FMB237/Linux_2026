FROM debian
RUN apt update
RUN apt install nginx -y
VOLUME "/var/www/html"
EXPOSE 80
CMD "/usr/sbin/nginx -g daemon off;" 

#
