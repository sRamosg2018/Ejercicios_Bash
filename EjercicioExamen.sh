#!/bin/bash
w="w"
x="x"
r="r"
#Realizado por Santiago Ramos Gómez

if ! [ $# -eq 3 ]
then
	echo "Numero invalido de argumentos" 
	exit -1
fi

if ! [ -e $1  ]
then 
	echo "No existe el archivo $1"
	exit -2
fi

if [ $2 = $w ] || [ $2 = $x ] || [ $2 = $r ]
then 
if [ $3 = "quitar" ]
then
	`chmod u-$2 $1`

elif [ $3 = "poner" ]
then 
	`chmod u+$2 $1`
else 
	echo "Error argumento 3, $3 debe ser quitar o poner"
	exit -4
fi
else 
	echo "Error en el argumento 2, $2, debe ser x/w/r"
	exit -3
fi
exit 0

