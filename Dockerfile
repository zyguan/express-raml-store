FROM node:8.4-alpine
MAINTAINER zhongyangguan@gmail.com

WORKDIR /usr/local/api-designer
COPY ./package.json /usr/local/api-designer/package.json
RUN npm install

ADD . /usr/local/api-designer

ENTRYPOINT ["./entrypoint.sh"]

ENV RAML_DATAPATH /var/lib/raml-store
VOLUME /var/lib/raml-store
