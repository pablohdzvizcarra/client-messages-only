FROM node:lts-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./

COPY package-lock.json ./

RUN npm install
RUN npm install react-scripts@3.4.1 -g --silent

COPY . ./

CMD ["npm", "start"]
