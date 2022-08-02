#!/bin/bash

manual(){
for i in `ls /bin`
do 
	if ! [ -e "/usr/share/man/man1/$i.1.gz"	]	
	then
		echo "No existe manual para el mandato $i"
	fi	
done
}
manual
permisos(){
if [ $# -eq 1 ]
then
	if ! [ -e $1 ]
	then
		exit 1
	else   
		for i in `find $1 -name "*.sh"`
		do 
			echo "test $i"
			`chmod ugo+x $i`
		done
	fi
else 
	permisos `pwd`		
fi	
}
#permisos $1
