# Imagen base ligera de Node
FROM node:20-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiamos package.json
COPY package*.json ./

# Instalamos dependencias
RUN npm install --omit=dev

# Copiamos el resto del código (los . recogen el siZo actual)
COPY . .

# Puerto en el que escucha la app
EXPOSE 3000

# Comando de arranque
CMD ["npm", "start"]
