FROM oven/bun:alpine AS builder
LABEL authors="Vlad Kramarukha"

ENV APP_PATH=/

WORKDIR /app

COPY package.json .

RUN bun install

COPY . .

RUN bun run build

FROM nginx:latest

COPY --from=builder /app/dist /usr/share/nginx/html
COPY --from=builder /app/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
