# The Builder
FROM node:10.16.3-alpine AS builder
WORKDIR /usr/src/app
RUN apk add --no-cache git 
COPY package*.json ./
RUN npm install 
COPY . .
RUN npm run build

# The App
FROM nginx:1.17.4-alpine AS app
COPY --from=builder /usr/src/app/build /usr/share/nginx/html
