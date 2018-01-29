FROM node:carbon
RUN mkdir -p /code
WORKDIR /code
COPY package.json /code
RUN npm install
COPY src/ .
CMD node server.js