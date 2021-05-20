FROM node:alpine

WORKDIR /app

COPY ./package*.json ./

RUN apk update
RUN npm install
RUN npm install npm
RUN npm install @vue/cli
RUN npm install vuetify

CMD ["npm", "run", "build"]