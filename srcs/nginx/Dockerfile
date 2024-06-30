# Dockerfile must begin with FROM parent-image:version
FROM alpine:3.19 


# apk - package manager in alpine
# add - install
# --no-cache - invalidate caches during the next build
RUN apk update && apk upgrade  && \
    apk --no-cache add nginx

RUN			rm -f /etc/nginx/nginx.conf


COPY ./conf/nginx.conf /etc/nginx/nginx.conf
<<<<<<< HEAD
# COPY ./ssl/adashyan.42.fr.crt /etc/nginx/ssl/adashyan.42.fr.crt
# COPY ./ssl/adashyan.42.fr.key /etc/nginx/ssl/adashyan.42.fr.key

# COPY nginx.conf /etc/nginx/nginx.conf
# COPY nginx.crt /etc/nginx/certs/nginx.crt
# COPY nginx.key /etc/nginx/certs/nginx.key
=======
>>>>>>> e407ff829ab5cfd832cc33366b46113324c32d95

# specifying port does not publish it
EXPOSE 443

# CMD which executes when the container starts
# CMD is in exec form - JSON array
# -g set global conf directive
# "deamon off;" - This is often necessary when running Nginx within a Docker container because Docker expects the main process to stay running, and running Nginx as a daemon can cause Docker to think the container has stopped.
CMD ["nginx", "-g", "daemon off;"]
