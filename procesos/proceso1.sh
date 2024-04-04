#!/bin/bash

###############################################
#
# NOMBRE: sifnals.sh (tengo q cambiarlo)
# AUTOR: Pedro Martín Escuela
# OBJETIVO: Probar las señales en los procesos
#
# ENTRADAS: ninguna
# SALIDAS: ninguna
#
# VERSIONES: 2024-02-05 v1.0 Inicial
#
##############################################

trap "echo 'No no no. No me puedes matar!!! :D'" SIGTERM
trap "echo 'Tampoco puedes matarme así!!!' " INT
trap "echo 'JAJAJAJAJAJA SOY INMORTAL!!!! >:)'"

# $$ indica el PID del proceso
echo "soy el proceso $$"
echo "Duermo 10 segundos"
sleep 10
echo "Ya me desperté"

i=0
while true
do
trap "echo Iteracion: $i" USR
	((i++))
	sleep 1
done


