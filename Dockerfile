FROM node:14.21-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run start
EXPOSE 3000
CMD [ "npm", "run", "serve" ]
