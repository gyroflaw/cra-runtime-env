# build

FROM node:16.14.0-alpine AS build

ENV NODE_ENV "production"

COPY . /app
WORKDIR /app

RUN npm install --dev

RUN npm run build

FROM nginx:latest as serve

COPY --from=build /app/build /var/www/html

COPY ./docker/nginx.conf.template /etc/nginx/templates/default.conf.template
# Copy runtime ENV required files
COPY ./docker/runtime-env.sh /docker-entrypoint.d
COPY ./public/config.js.template /var/www/html/config.js.template

RUN chmod +x /docker-entrypoint.d/runtime-env.sh

EXPOSE 80