FROM ubuntu:18.04
RUN \
  apt update && \
  apt install -y nginx apache2-utils && \
  htpasswd -b -c /etc/nginx/.htpasswd admin admin123 && \ # IMPORTANT: this password should be defined in the safe place without HARDCODE
  echo "Hello World" > /var/www/html/index.html && \
  mkdir -p /var/www/html/auth/ && \
  echo "Hello World $(id -nu)" > /var/www/html/auth/index.html

COPY nginx-template/default_srv /etc/nginx/sites-enabled/default

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx", "-g", "daemon off;"]

# Expose ports.
EXPOSE 80
EXPOSE 443
