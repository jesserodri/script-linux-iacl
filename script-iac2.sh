#!/bin/bash
echo "atualizando servidor..."
apt-get update
apt-get upgrade
apt install apache2 -y
apt install unzip -y

echo "baixando e configurando..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd /var/www/
mv html html2
mkdir html
cd /tmp
unzip main.zip
mv linux-site-dio-main html
mv html /var/www/
