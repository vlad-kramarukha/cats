FROM oven/bun:alpine AS builder
LABEL authors="vlad_kramarukha"

WORKDIR /app
COPY package.json .

RUN bun install

COPY app .

RUN bun run build

FROM nginx:latest

COPY --from=builder /app/dist /usr/share/nginx/html
COPY --from=builder /nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
