FROM nginx:1.21.0-alpine

LABEL maintainer="My nginx container"
# мой докерхаб
# https://hub.docker.com/repository/docker/klayn24/nginx_test/tags?page=1&ordering=last_updated

# COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html

WORKDIR /opt/service

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]