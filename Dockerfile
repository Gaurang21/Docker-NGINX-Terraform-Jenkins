FROM nginx:alpine
MAINTAINER Gaurang Suki <gaurang.suki@gmail.com>

COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

 
