FROM node:20.17

WORKDIR /code

ENV KAFKA_DEAD_LETTER_QUEUE=dlq-topic KAFKA_HOST_NAME=kafka KAFKA_PORT_1=9092 KAFKA_PORT_2=9092 KAFKA_PORT_3=9092

COPY package.json ./package.json

RUN npm install && npm install typescript -g

COPY . .

RUN tsc
CMD ["node", "build/index-deadletterqueue.js"]
