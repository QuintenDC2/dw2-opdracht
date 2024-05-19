@echo off
REM Build de Docker image
docker build -t demo-site:latest .

REM Stop en verwijder een bestaande container als die bestaat
docker stop demo-site
docker rm demo-site

REM Start een nieuwe container op poort 81
docker run -d -p 81:80 --name demo-site demo-site:latest
