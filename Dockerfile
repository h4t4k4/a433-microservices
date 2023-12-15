FROM node:14.21-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh
RUN npm install
COPY . .
RUN npm run start
EXPOSE 3001
CMD [ "npm", "run", "serve" ]