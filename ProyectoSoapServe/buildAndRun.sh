#!/bin/sh
mvn clean package && docker build -t com.mycompany/ProyectoSoapServe .
docker rm -f ProyectoSoapServe || true && docker run -d -p 9080:9080 -p 9443:9443 --name ProyectoSoapServe com.mycompany/ProyectoSoapServe