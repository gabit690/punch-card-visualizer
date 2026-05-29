FROM node:24.16.0-alpine3.23 AS build

WORKDIR /app

RUN corepack enable

COPY . .

RUN pnpm build

FROM nginx:stable-alpine3.23-perl

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
