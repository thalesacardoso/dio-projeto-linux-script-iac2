#!/bin/bash

echo "--------- Script iniciado ---------"

echo "--------- Atualizando servidor ---------"
apt-get update -y
apt-get upgrade -y
echo "--------- Servidor atualizado ---------"

echo "--------- Instalando Apache ---------"
apt-get install apache2 -y
echo "--------- Apache instalado ---------"

echo "--------- Instalando Unzip ---------"
apt-get install unzip -y
echo "--------- Unzip instalado ---------"

cd /tmp
echo "--------- Baixando arquivos do Github ---------"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "--------- Download finalizado ---------"

unzip main.zip
mv /tmp/linux-site-dio-main/*  /var/www/html/
echo "--------- Script finalizado!!! ---------"
