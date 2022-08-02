#!/bin/bash

ruta="$1"
if [ $# -eq 0 ] 
then 
	ruta="`pwd`"
elif ! [[ -d $1  ]]; then
		echo "No es un directorio!"
		exit 1
fi
find $ruta -name "a*" -o -name "b*" | sed '/~/d'

