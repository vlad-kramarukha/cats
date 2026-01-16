FROM oven/bun:alpine AS builder
LABEL authors="Vlad Kramarukha"

WORKDIR /app

COPY package.json .

RUN bun install

COPY . .

RUN bun run build --base=${BASE_PATH}

FROM nginx:latest

COPY --from=builder /app/dist /usr/share/nginx/html
COPY --from=builder /app/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
