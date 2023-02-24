# Imagen base de Python
FROM python:3.9-slim-buster

# Copia el contenido de la aplicación a la imagen del contenedor
COPY . /app

# Establecer el directorio de trabajo para la aplicación
WORKDIR /app

# Instalar las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto que escucha la aplicación
EXPOSE 5000

# Establecer la variable de entorno de Flask
ENV FLASK_APP=run.py

# Iniciar la aplicación cuando se inicie el contenedor
CMD ["flask", "run", "--host=0.0.0.0"]
