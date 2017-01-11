FROM node:6
RUN apt-get update

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install -q -g pm2

COPY package.json /usr/src/app/
RUN npm install -q -D
COPY . /usr/src/app

RUN npm run build

ENV PORT 5000

CMD [ "npm", "run", "prod" ]
