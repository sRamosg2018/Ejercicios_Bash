#!/bin/bash

if [ $# -eq 0 ] || [ $# -gt 1 ]
then
	echo "Solo acepta un argumento"
else
for i in `echo $PATH | tr : "\n"`
do
	`find "$i" -type f -name "$1" -print 2>/dev/null`
done
fi