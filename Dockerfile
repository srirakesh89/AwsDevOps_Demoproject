# Dev Dockerfile
FROM node:20-alpine

WORKDIR /app

# install dependencies
COPY package*.json ./
RUN npm install

# copy source
COPY . .

# expose default app port (metadata)
EXPOSE 3000

# for dev, run with volumes so changes reflect immediately
CMD ["node", "src/index.js"]
