FROM node:alpine

# Setup
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 8000

CMD ["npm", "run", "start:prod"]
