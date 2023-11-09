#!/bin/bash

REPO="devops-static-web"

echo "=================="

apt-get update

echo "El servidor esta actualizado"

if dpkg -l | grep -q apache2 ;
then
    echo "ya esta instalado apache2"
else
    echo "Instalando paquete apache2"
    apt install apache2 -y
    systemctl start apache2
    systemctl enable apache2
fi

if [ -d "$REPO" ] ;
then
    echo "la carpeta $REPO ya exite"
else
    git clone -b devops-mariobros https://github.com/roxsross/$REPO.git
fi

echo "instalando web"
sleep 1

cp -r $REPO/* /var/www/html
