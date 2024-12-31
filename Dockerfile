FROM ubuntu:latest

RUN apt update && apt install -y sudo apache2

COPY setup_httpd.sh /setup_httpd.sh

RUN chmod +x /setup_httpd.sh

RUN /setup_httpd.sh

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]





