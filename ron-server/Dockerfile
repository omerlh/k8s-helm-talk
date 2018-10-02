FROM node:8-alpine

WORKDIR /app

COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . . 

CMD ["node", "server.js"]