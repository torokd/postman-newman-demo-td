FROM node:21-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .

ARG testingScope
ARG environment
ARG tokenType
ARG reporting

ENV testingScope=${testingScope}
ENV environment=${environment}
ENV tokenType=${tokenType}
ENV reporting=${reporting}

CMD ["sh", "-c", "npm run ${testingScope}:${environment}:${tokenType}:${reporting}"]