# Gebruik een eenvoudige webserver image
FROM nginx:alpine

# Kopieer de website bestanden naar de webserver
COPY html /usr/share/nginx/html

# Maak een buildtime.txt bestand met de huidige tijd
RUN date > /usr/share/nginx/html/buildtime.txt

# Expose poort 81
EXPOSE 81

# Start Nginx webserver
CMD ["nginx", "-g", "daemon off;"]
