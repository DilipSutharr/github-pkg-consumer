FROM node:20.11.0-alpine AS build

WORKDIR /app

COPY package.json .npmrc ./

RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]