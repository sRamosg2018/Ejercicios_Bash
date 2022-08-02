#!/bin/bash

ruta=$1
if [ $# -eq 0 ]
then
	ruta=`pwd`
elif [ $# -gt 1 ]
then
	echo "Solo acepta 1 argumento";
	exit 0;
fi
ls "$ruta" -S -s | sed -n '2,3p';
