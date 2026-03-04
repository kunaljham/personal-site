FROM golang:1.22 AS build

# Install Hugo
RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.147.0/hugo_extended_0.147.0_Linux-64bit.tar.gz | tar -xz -C /usr/local/bin

WORKDIR /app
COPY . .

RUN hugo mod tidy
ARG RAILWAY_PUBLIC_DOMAIN
RUN hugo --baseURL="https://${RAILWAY_PUBLIC_DOMAIN:-www.kajham.com}"

FROM caddy:2-alpine
COPY --from=build /app/public /srv
COPY Caddyfile /etc/caddy/Caddyfile
