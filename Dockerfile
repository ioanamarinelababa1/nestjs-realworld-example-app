FROM node:18-alpine

WORKDIR /usr/src/app

# Copiem fișierele de configurare
COPY package*.json ./

# Instalăm dependențele
RUN npm install

# Copiem restul codului
COPY . .

# Compilăm codul folosind scriptul tău existent (prestart:prod rulează tsc)
RUN npm run prestart:prod

EXPOSE 3000

# Pornim aplicația folosind fișierul compilat
CMD ["npm", "run", "start:prod"]