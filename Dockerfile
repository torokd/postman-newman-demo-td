FROM node:21-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
CMD npm run regression:dev:accessToken:cli && npm run regression:dev:refreshToken:cli