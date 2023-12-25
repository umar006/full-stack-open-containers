FROM node:18.19.0-slim

ENV REACT_APP_BACKEND_URL=http://localhost:3000

WORKDIR /usr/src/app

COPY --chown=node:node . .

RUN npm ci

RUN npm run build

RUN npm install -g serve

USER node

CMD ["serve", "build"]
