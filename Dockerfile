FROM nginx:alpine

COPY game/ /usr/share/nginx/html/

# Копируем nginx-конфигурацию
COPY webgl.conf /etc/nginx/conf.d/default.conf

# Копируем вашу WebGL-сборку
COPY game/ /usr/share/nginx/html/

# Доступ к localhost:80
EXPOSE 80