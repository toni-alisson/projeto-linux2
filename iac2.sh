#!/bin/bash

echo "Atualizando servidor..."
apt-get update 
apt-get upgrade -y

echo "Instalando Apache2 ..."
apt-get install apache2 -y

echo "Instalando descompactador ..."
apt-get install unzip -y

echo "Baixando arquivo"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo baixado ..."
unzip main.zip

echo "Copiando arquivos "
cd linux-site-dio
cp -R ./* /var/www/html/

echo "Fim!"
