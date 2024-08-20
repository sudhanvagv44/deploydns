# FROM node:16-alpine AS Builder
FROM node:16-alpine

# RUN mkdir src

# WORKDIR /src


COPY package.json  ./
COPY package-lock.json  ./

RUN npm install 

COPY . ./

RUN npm run build
EXPOSE 3000
CMD [ "npm","start" ]