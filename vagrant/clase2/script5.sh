#!/bin/bash

#variable


if dpkg -l | grep -q apache2 ;
then
	echo "ya esta instalado"
else
	echo "instalando paquete"
	apt install apache2 -y
fi

echo "este es es mi primer script de variable $VALOR1"
#mkdir hola
#touch hola/prueba.txt
echo "fin de script variable $VALOR2"
