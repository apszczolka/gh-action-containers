FROM node:alpine

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.xzt9k.mongodb.net
ENV MONGODB_USERNAME admin
ENV MONGODB_PASSWORD RK4GVOVIzFqTs9ii

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]