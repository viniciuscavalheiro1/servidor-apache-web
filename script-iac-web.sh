#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp

echo "Baixando arquivos do site..."

wget {URL_GIT}
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/

