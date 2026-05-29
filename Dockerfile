FROM node:24.16.0-alpine3.23

WORKDIR /app

RUN corepack enable

ENV HUSKY=0

COPY . .

RUN pnpm install

EXPOSE 5173

CMD ["pnpm", "run", "dev"]