FROM ubuntu
MAINTAINER  Baldur Gudbjornsson

RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup | sudo bash - && \
    apt-get -y install python build-essential nodejs python-software-properties libxml2-dev

RUN npm install -g apiaxle-api
RUN npm install -g apiaxle-proxy
