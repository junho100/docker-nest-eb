FROM node:16

WORKDIR /app

COPY . .

RUN npm ci

RUN npm run build

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]