FROM node:18.19.0-slim

WORKDIR /usr/src/app

COPY . .

RUN npm install

CMD ["npm", "start"]
