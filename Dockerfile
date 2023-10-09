FROM ubuntu:22.04
RUN apt update
RUN apt install -y nginx
EXPOSE 80
LABEL version ="1.1"
LABEL description="Nginx Server"
HEALTHCHECK --start-period=5m \
  CMD service nginx status || exit 1
CMD ["nginx", "-g", "daemon off;"]
