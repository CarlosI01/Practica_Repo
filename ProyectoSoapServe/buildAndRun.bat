@echo off
call mvn clean package
call docker build -t com.mycompany/ProyectoSoapServe .
call docker rm -f ProyectoSoapServe
call docker run -d -p 9080:9080 -p 9443:9443 --name ProyectoSoapServe com.mycompany/ProyectoSoapServe