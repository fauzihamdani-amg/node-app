FROM node:22.5.1

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY tsconfig.json ./

RUN npm run build

COPY . .

EXPOSE 3000

CMD ["node", "dist/app"]