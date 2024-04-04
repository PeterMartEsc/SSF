#!/bin/bash
#############################################################################
#
#
#
#
#
#############################################################################

compra=("pan" "huevos" "agua" "sartén" "sal fina" "sal gruesa")

#Mostrar el segundo elemento

echo "Mi lista es ${compra[1]}"

echo "Voy a mostrar mi todos los elementos"
for elem in "${compra[*]}"
do
	echo "Tengo que comprar $elem"
done
echo ""

echo "Voy a mostrar todos los elementos"
for elem in "${compra[@]}"
do
	echo "Tengo que comprar $elem"
done
echo ""

echo "El numero de elementos es ${#compra[@]}"
echo ""

echo "El índice de los elementos: ${!compra[@]}"

echo ""
echo "Insertar elemento (por el final):"
compra+=("leche")
for elem in "${compra[@]}"
do 
	echo "Tengo que comprar $elem"
done

compra=("medicina" ${compra[@]})
echo""
echo "Insertar un elemento (por el principio):"
for elem in "${compra[@]}"
do
	echo "Tengo que comprar $elem"
done
echo ""

echo "Insertar en la posición 2"
compra=(${compra[@]::2} "batido" ${compra[@]:2})
for elem in "${compra[@]}"
do
	echo "Tengo que comprar $elem"
done



echo "Insertar en la mitad"
mitad=$((${#compra[@]} / 2))
compra=(${compra[@]:$mitad} "chocolatina" ${compra[@]:$mitad})

for elem in "${compra[@]}"
do
	echo "Tengo que comprar $elem"
done
echo ""

for i in ${@:2}
do
	echo "Arg: $i"
done
echo ""

echo "----------------------------"
declare -A animales

animales["vaca"]="muuuuuuuuuuuuuuuu"
animales["gato"]="miauuuuuuu"
animales["perro"]="guauguau"

mi_animal="perro"

echo "Yo tengo un $mi_animal y hace ${animales[$mi_animal]}"
echo ""
