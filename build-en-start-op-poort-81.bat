@echo off
REM Build de Docker image
docker build -t demo-site-image .

REM Stop en verwijder een bestaande container met dezelfde naam, indien deze bestaat
docker stop demo-site-container
docker rm demo-site-container

REM Start een nieuwe container op poort 81
docker run -d -p 81:80 --name demo-site-container demo-site-image
