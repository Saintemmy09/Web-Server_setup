#!/bin/bash

apt update
apt install apache2 -y

HOSTNAME=$(hostname)

echo "Hello $HOSTNAME, welcome to my webserver!" > /var/www/html/index.html

systemctl start apache2
systemctl enable apache2

echo "httpd has been installed and is serving a webpage."



