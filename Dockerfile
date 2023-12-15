FROM node:14.21-alpine as builder
WORKDIR /app
COPY package*.json ./

FROM base as production
ENV NODE_ENV=production
RUN npm install
COPY . .
RUN npm run start
EXPOSE 3001
CMD [ "npm", "run", "serve" ]
 
FROM base as dev
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh
 
ENV NODE_ENV=development
RUN npm install
COPY . .
CMD ["node", "index.js"]