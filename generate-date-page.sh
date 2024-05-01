#!/bin/sh

# Generar una página web con la fecha actual
echo "<h1>La fecha actual es: $(date)</h1>" > /usr/share/nginx/html/index.html
