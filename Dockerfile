FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["sh", "-c", "npm start || node app.js || sleep infinity"]

