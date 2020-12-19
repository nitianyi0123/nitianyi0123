FROM node:latest
MAINTAINER nitianyi n121180075@gmail.com
LABEL description="A Dockerfile for build Docsify."
WORKDIR /app
COPY . ./
WORKDIR docs
RUN npm install -g docsify-cli@latest
RUN npm install -g http-server
EXPOSE 3000/tcp
ENTRYPOINT http-server /app/docs -p 3000
