FROM node:18

RUN apt-get update && apt-get install -y git && apt-get clean

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
