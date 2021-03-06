user  nginx;
worker_processes  1;
error_log  /var/log/nginx/error.log warn;
pid        /var/run/nginx.pid;
events {
  worker_connections  1024;
}

http {
  client_max_body_size 10000M;
  client_body_temp_path /usr/share/nginx/html;
  include       /etc/nginx/mime.types;
  default_type  application/octet-stream;
  log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
                    '$status $body_bytes_sent "$http_referer" '
                    '"$http_user_agent" "$http_x_forwarded_for"';
  access_log  /var/log/nginx/access.log  main;
  sendfile        on;
  keepalive_timeout  65;

  server{
    listen 80;
    server_name nginx;
    location / {
      root   /usr/share/nginx/html/dist;
      index  index.html index.htm;
    }
    location /api/v1/ {
      proxy_request_buffering off;
      include uwsgi_params;
      uwsgi_pass app:3031;
    }
  }
}


