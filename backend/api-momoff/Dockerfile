FROM node:14-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./backend/api-momoff/package.json /usr/src/app/

RUN apk update

#RUN apk add --no-cache vips-dev build-base

RUN npm install && npm cache clean --force

COPY ./backend/api-momoff/ /usr/src/app

ENV NODE_ENV production
ENV PORT 80

EXPOSE 80

CMD [ "npm", "start" ]
