FROM node:12

#Creating working directory
WORKDIR /usr/src/app

COPY package*.json ./application/

RUN npm install

#Copy original code
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
