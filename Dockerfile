# Usar la imagen base de Nginx
FROM nginx:alpine

# Copiar el archivo de configuración de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar el script que genera la página web con la fecha
COPY generate-date-page.sh /usr/share/nginx/html/generate-date-page.sh

# Dar permisos de ejecución al script
RUN chmod +x /usr/share/nginx/html/generate-date-page.sh

# Ejecutar el script al iniciar el contenedor
CMD ["/bin/sh", "-c", "/usr/share/nginx/html/generate-date-page.sh && nginx -g 'daemon off;'"]
