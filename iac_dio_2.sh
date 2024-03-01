#!/bin/bash

echo "Atualizando servidor e instalando aplicações."
apt-get update
apt-get update -y
apt-get install apache2 unzip -y

echo "Baixando a copiando os arquivos do servidor web Apache2."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/