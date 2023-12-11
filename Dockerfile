FROM node:14

WORKDIR /app

COPY ./backend/api-momoff/package*.json ./
RUN npm install

COPY ./backend/api-momoff/ .

EXPOSE 80

CMD ["node", "app.js"]


# Utilisation de l'image Node.js basée sur Alpine Linux
#FROM node:14-alpine

#RUN mkdir -p /usr/src/app

#WORKDIR /usr/src/app

#COPY ./backend/api-momoff/package.json /usr/src/app/

#RUN apk update

# Installation des dépendances système nécessaires pour "sharp"
#RUN apk add --no-cache vips-dev build-base

#RUN npm install && npm cache clean --force

#COPY ./backend/api-momoff/ /usr/src/app

#ENV NODE_ENV production
#ENV PORT 80

#EXPOSE 80

# Commande pour démarrer l'application
#CMD [ "npm", "start" ]
