FROM debian:9-slim
RUN apt-get update && apt-get install -y wget ca-certificates jq openssh-client \
  && cd /tmp \
  && wget https://github.com/digitalocean/doctl/releases/download/v1.9.0/doctl-1.9.0-linux-amd64.tar.gz \
  && tar -xvf doctl-1.9.0-linux-amd64.tar.gz \
  && mv doctl /usr/bin \
  && apt-get remove -y wget ca-certificates \
  && apt-get autoremove -y \
  && rm -rf /tmp /var/lib/apt/lists/*