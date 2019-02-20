FROM ubuntu:16.04

RUN 	apt-get update && \
	apt-get -y install apache2 

COPY ./src /var/www/html/

EXPOSE 

ENTRYPOINT [ "apachectl", "-D", "FOREGROUND" ]
 
