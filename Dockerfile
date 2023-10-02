FROM nginx:1.25-alpine-slim
COPY configs /etc/nginx/conf.d
COPY php/ /var/www/html/
RUN rm /var/www/html/index.php
