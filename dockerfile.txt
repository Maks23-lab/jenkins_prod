FROM ubuntu:20.04

RUN set -x && \
    apt update -y && \
    apt isntall nginx

COPY . /var/www/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]