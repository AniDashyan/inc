FROM alpine:3.19
RUN	apk update && apk upgrade  && apk --no-cache add nginx
#RUN	rm -f /etc/nginx/nginx.conf

COPY	./conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE	443
CMD	["nginx", "-g", "daemon off;"]
