FROM node:lts-slim as builder

WORKDIR /app

COPY ./frontend .

RUN npm install && npm run build

FROM nginx:1.25
COPY --from=builder /app/dist /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY ./compose/production/nginx/nginx.conf /etc/nginx/conf.d
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
