FROM node:24-alpine

WORKDIR /app

COPY ./package*.json ./ 

RUN npm install

COPY . . 

ENV DATABASE_URL=postgresql://postgres:testpass123@localhost:5432/mydb?schema=public
RUN npx prisma generate
RUN npm run build

CMD ["npm","run","dev:docker"]

