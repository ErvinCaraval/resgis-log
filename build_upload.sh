#!/bin/bash

# Iniciar sesión en Docker Hub si no has iniciado sesión previamente
docker login

# Construir las imágenes de backend y frontend con docker-compose
echo "Construyendo las imágenes de backend y frontend..."
docker-compose build

# Esperar 5 segundos para asegurar que las imágenes se construyan correctamente
sleep 5

# Subir las imágenes a Docker Hub utilizando los nombres de las imágenes configurados en docker-compose.yml
echo "Subiendo la imagen del backend..."
docker-compose push backend

echo "Subiendo la imagen del frontend..."
docker-compose push frontend

# Mostrar un mensaje indicando que la subida ha terminado
echo "Imágenes de backend y frontend subidas exitosamente."
