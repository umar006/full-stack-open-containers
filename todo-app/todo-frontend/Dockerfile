FROM node:18.19.0-slim as build-stage

ENV REACT_APP_BACKEND_URL=http://localhost:3000

WORKDIR /usr/src/app

COPY . .

RUN npm ci

RUN npm run build

FROM nginx:alpine

COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html
