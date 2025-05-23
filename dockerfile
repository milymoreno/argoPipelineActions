# Usa una imagen base de Java
FROM openjdk:17-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo Java al contenedor
COPY HelloWorld.java .

# Compila el archivo Java
RUN javac HelloWorld.java

# Crear un usuario no root y cambiar a él
RUN adduser -D appuser && chown -R appuser /app
USER appuser

# Comando por defecto al ejecutar el contenedor
CMD ["java", "HelloWorld"]


# FROM python:3.9-slim
# # Crear un directorio de trabajo
# WORKDIR /app
# # Copiar dependencias e instalarlas
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt
# # Copiar el código de la app
# COPY app.py .
# # Crear un usuario no root y cambiar a él
# RUN useradd -m appuser && chown -R appuser /app
# USER appuser
# # Expone el puerto 8082
# EXPOSE 8082
# # Comando por defecto
# CMD ["python", "app.py"]

