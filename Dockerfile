FROM nginx:stable-alpine

ENV SOURCE_ROOT /usr/share/nginx/html

COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./public ${SOURCE_ROOT}

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
