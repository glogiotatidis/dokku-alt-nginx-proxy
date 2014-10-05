FROM ubuntu:14.04

RUN apt-get update && apt-get install -y nginx-light

WORKDIR /app
ADD nginx.conf /app/

EXPOSE 5000
ENTRYPOINT ["nginx", "-c",  "/app/nginx.conf"]

