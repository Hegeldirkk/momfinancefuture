# Utilisation de l'image Node.js basée sur Alpine Linux
FROM node:14-alpine

# Création du répertoire de l'application
RUN mkdir -p /usr/src/app

# Définition du répertoire de travail
WORKDIR /usr/src/app

# Copie du fichier package.json de votre application
COPY ./backend/api-momoff/package.json /usr/src/app/

# Mise à jour des dépôts Alpine Linux
RUN apk update

# Installation des dépendances système nécessaires pour "sharp"
RUN apk add --no-cache vips-dev build-base

# Installation des dépendances Node.js et nettoyage du cache
RUN npm install && npm cache clean --force

# Copie du reste de votre application
COPY ./backend/api-momoff/ /usr/src/app

# Configuration des variables d'environnement
ENV NODE_ENV production
ENV PORT 80

# Exposition du port 80
EXPOSE 80

# Commande pour démarrer l'application
CMD [ "npm", "start" ]
