#!/bin/bash

time ls | cut -f 1 -d. | sort -u | while read i
do
	echo $i
	ls ${i}* | xargs zcat | pigz > daily.gz
	mv daily.gz ${I}.gz
done

