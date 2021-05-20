From nginx:alpine
COPY ./nginx_conf/nginx.tpl /etc/nginx/nginx.conf
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf