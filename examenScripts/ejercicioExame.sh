#!/bin/bash

#####################################################################
#
# Nombre: Pedro Martín Escuela
#
# Objetivo: Resolver el ejercicio 1 del exámen de scripts, siguiendo
#           los puntos expuestos en este.
#
# Fecha: 21/03/2024
#
######################################################################

usuario=$1

if[-z "$usuario"]
then
	echo "No se ha introducido ningun usuario"
	$?=5
else
	read -p "Introduzca el nombre de un grupo" grupo
	getent group | grep -e "^$grupo/"
	if[$? ne 0]
	then 
		echo "El grupo no existe, será creado"
		sudo groupadd $grupo
	fi
	if getent passwd | grep -e "^$usuario" ; then
	echo "1. Cambiar grupo primario"
	echo "2. Eliminar el permiso de impresión"
	echo "3. Eliminar el usuario y todo el contenido de su espacio personal (finaliza automaticamente todo lo que está ejecutando)"
	echo "4. No hacer nada"

	read -p "Elija una opción" opcion

	case $opcion

		1:
		sudo usermod $usuario -g $grupo
		;;

		2:
		sudo groupmod printer -d $usuario
		;;

		3:
		sudo userdel $usuario
		sudo pkill $usuario
		;;

		4:
		echo "No hará nada"

	esac

	else
		echo "El usuario no existe, vamos a añadirlo"
		sudo useradd -d /home/$usuario -g $grupo -G print,scanner -s /bin/bash
		echo "Usuario creado"
		getent passwd | grep -e "^$usuario"

	fi
	echo "Total de usuarios: " getent passwd | grep -c ""
fi
