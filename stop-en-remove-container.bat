@echo off
REM Stop de container
docker stop demo-site

REM Verwijder de container
docker rm demo-site
