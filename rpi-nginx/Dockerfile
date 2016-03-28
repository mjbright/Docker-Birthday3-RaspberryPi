
FROM hypriot/rpi-alpine-scratch

MAINTAINER Mike Bright <dockerfile@mjbright.net>

RUN apk update && apk add nginx

ENV AUTHOR=Docker

RUN mkdir -p /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

ADD start_nginx.sh .

ADD Hello_docker.html .

#CMD [ "/bin/sh" "-c" "./start_nginx.sh /usr/share/nginx/html" ]
#CMD "./start_nginx.sh /usr/share/nginx/html"
CMD [ "./start_nginx.sh", "/usr/share/nginx/html" ]

EXPOSE 80

