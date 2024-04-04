#!/bin/bash
#############################################################################
#
#
#
#
#
#
#
#
#############################################################################

# Función que calcula la media de dos valores
function media2v {
	local v1=$1
	local v2=$2

	# Si falta alguno de los valores,
	# devolvemos un error 10
	if [ -z "$v1" ] || [ -z "$v2" ]
	then
		return 10
	fi

	local m=$(( (v1+v2)/2 ))
	echo $m
	return 0
}

# Calcular la media de N valores
mediaNv(){
	local suma=0
	local mun_valores=$#
	for i in "$@"
	do
		((suma+=i))
		#suma=$((suma+i))
	done

	local res=$(( suma / num_valores))
	echo "$res"
}

a=10
v1=2334
echo "a=$a, v1=$v1, v2=$v2, m=$m"
res=$(media $1 $2)
echo "El código de error devuelto es $?"
echo "El resultado es $res"
echo "a=$a, v1=$v1, v2=$v2, m=$m"

f1=(23 57 38 15 16)
med=$(mediaNv ${f1[@]})
echo "La media de f1 es $med"

f2=(40 19 30 17 1)
f3=(7000000 33 28 3)
echo "La media de f3 es $(mediaNv ${f3[@]})"
