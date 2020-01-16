#!/bin/bash

# $1 is the source folder
# $2...$whatever are the destation folders

srcf=$1
shift

i=0
while (( $# > 0 ))
do
	echo $i
	destd[$i]=$1
	let i=i+1
	shift
done

echo "Source Directory       : $srcf"
echo "Destination Directories:"
for FN in ${destd[@]}
do
	echo $FN
done
echo "Num Dest Dirs          :" ${#destd[@]}
echo -------------------------------------------------------


#find $srcf -type f | while read mvme
ls -S $srcf/* | while read mvme
do
	smaldir=$( du -ks ${destd[@]} | sort -n | head -n 1 | awk '{print $2;}' )
	#mv -vi $mvme $smaldir/
	cp -v $mvme $smaldir/
done


