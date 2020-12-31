FROM node:alpine

WORKDIR /usr/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY ./ ./

# Add bash
RUN apk add --no-cache bash
EXPOSE 8000
CMD ["node", "index.js"]