FROM node:14.21-alpine as builder
WORKDIR /app
COPY . .
RUN npm install
ENV AMQP_URL="amqp://localhost:5672"
EXPOSE 3001
CMD [ "npm", "index.js" ]
