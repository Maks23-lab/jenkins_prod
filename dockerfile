FROM ubuntu:20.04

RUN set -x && \
    apt update -y && \
    apt install nginx -y

COPY ./prod/ /var/www/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]