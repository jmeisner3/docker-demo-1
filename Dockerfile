FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.demo.default.conf /etc/nginx/conf.d/default.conf
ADD assets /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]