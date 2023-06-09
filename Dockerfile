FROM node

RUN apt update

WORKDIR /app

COPY . .
COPY package*.json ./
COPY prisma ./prisma/

RUN npm install
RUN npx prisma
RUN apt install netcat -y

EXPOSE 3000