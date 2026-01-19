# Dockerfile
FROM node:25.2.1

# Crear directorio de la aplicación
WORKDIR /usr/src/app

# Copiar archivos al contenedor
COPY package*.json ./
COPY index.js .


# Instalar dependencias
RUN npm install

# copiar el resto de los archivo 
COPY users.json .
# Exponer el puerto de la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "index.js"]