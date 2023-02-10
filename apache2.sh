#/bin/bash
#Script de instação do Apache
#github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo Atualizando o servidor
echo ----------------------
apt update 
apt upgrade -y
slep 1

echo Baixando as aplicaoes
echo Apache2 / Unzip
echo ----------------------
apt install apache2 unzip -y
slep 1

echo Download do modelo HTML
echo ----------------------
cd /tmp
wget github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cp main.zip /var/www/main.zip
cd /var/www/
rm -rf html
unzip main.zip
mv linux-site-dio-main html
slep 1

echo Pronto para usar
echo ----------------------
