FROM nginx:alpine
RUN mkdir -p /ssl
COPY docker/cert7.pem docker/privkey7.pem /ssl/
COPY docker/example2/default.conf /etc/nginx/conf.d/default.conf
COPY src/ /var/www/html