FROM debian:9-slim
RUN apk add --no-cache wget ca-certificates \
  && cd /tmp \
  && wget https://github.com/digitalocean/doctl/releases/download/v1.9.0/doctl-1.9.0-linux-amd64.tar.gz \
  && tar -xvf doctl-1.9.0-linux-amd64.tar.gz \
  && mv doctl /bin