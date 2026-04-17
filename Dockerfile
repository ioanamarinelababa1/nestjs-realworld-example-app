FROM node:18-alpine

# Instalăm uneltele necesare pentru compilarea modulelor native (ca argon2)
RUN apk add --no-cache python3 make g++

WORKDIR /usr/src/app

# Copiem fișierele de dependințe
COPY package*.json ./

# Instalăm:
# 1. Toate pachetele din package.json
# 2. Driverul de Postgres (pg) - piesa care lipsea la ultima rulare
# 3. ts-node și typescript global pentru a putea rula aplicația direct din codul sursă
RUN npm install --unsafe-perm && \
    npm install pg --save && \
    npm install -g ts-node typescript

# Copiem restul codului în container
COPY . .

# Ne asigurăm că fișierele de config există (prevenim erori de "missing file")
RUN cp src/config.ts.example src/config.ts || true
RUN cp ormconfig.json.example ormconfig.json || true

# Portul pe care ascultă NestJS
EXPOSE 3000

# Pornim aplicația folosind ts-node direct pe fișierul de intrare
CMD ["ts-node", "src/main.ts"]