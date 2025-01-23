FROM node:latest

LABEL maintainer="Tanner Garner"

WORKDIR /

EXPOSE 8080

RUN npm install

CMD [ "npm", "start" ]