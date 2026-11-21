FROM nginx:stable-alpine-slim

COPY nginx.conf /etc/nginx/nginx.conf
COPY settings/ /etc/nginx/settings/
COPY apps/ /etc/nginx/apps/

EXPOSE 80
