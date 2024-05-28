#!/bin/bash
echo "atualizando servidor..."
apt-get update
apt-get upgrade
apt install apache2 -y
apt install unzip -y

echo "baixando site exemplo e configurando..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd /var/www/

echo "fazendo backup da pasta HTML"
mv html html2
echo "fazendo uma nova pasta"
mkdir html
cd /tmp
echo "descompactando e movendo arquivos"
unzip main.zip
mv linux-site-dio-main html
mv html /var/www/
