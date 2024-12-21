FROM debian:bullseye

RUN apt update && apt upgrade -y
RUN apt install -y nginx openssl
RUN mkdir -p /var/run/nginx /var/www/html

RUN mkdir -p /etc/nginx/ssl


COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY ./tools/nginx_start.sh /var/www
EXPOSE 443
RUN chmod +x /var/www/nginx_start.sh
ENTRYPOINT ["var/www/nginx_start.sh"]
CMD ["nginx", "-g", "daemon off;"]