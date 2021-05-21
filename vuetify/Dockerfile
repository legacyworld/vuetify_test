FROM node:alpine

WORKDIR /app

COPY ./package*.json ./

RUN apk update
RUN npm install -g npm
RUN npm install

CMD ["./node_modules/.bin/vue-cli-service", "build", "--watch"]