#!/bin/bash

# This shell script takes a directory full of files and
# spreads them out over various output directories.
# They output directories are balanced by file size.
# So, each output directory should take approximately
# the same amount of disk space.
#
# Sample use cases:
# 1. You've got a bunch of files and you need to split them across file systems
# 2. You've got a tool that processes a directory full of files. You want to
#    run multiple simultaneous copies of that tool to make your job run faster.
#    So, split your input files across multiple directories!
#
# $1 is the source folder
# $2...$whatever are the destation folders
#
# version 0.2

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

