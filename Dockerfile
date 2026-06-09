FROM node:alpine-20

WORKDIR /app

COPY package*.json .

RUN npm install

COPY app.js .

RUN mkdir -p dist && cp app.js /dist/app.js

CMD [ "npm", "start" ]

