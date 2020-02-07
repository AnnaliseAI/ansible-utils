FROM debian:buster-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt-get install \
ca-certificates \
curl \
jq \
python3 \
python3-pip \
python3-setuptools \
python3-wheel \
wget \
  --no-install-recommends -y

RUN pip3 install ansible

WORKDIR /app

CMD [ "/bin/bash" ]
