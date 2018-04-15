#!/usr/bin/awk -f 

# This sums the first column of the input set and prints it.
# 
# For example: if you run wc -l on a bunch of files and pipe
# that to totes1.awk, it will sum the number of lines for each
# individual file and print the total.

# Writted by Mark W. Jeanmougin, markjx@gmail.com, @markjx01
# Version 1.0
# Last updated: 15 Apr 2018

{totes=totes+$1;}
END {print totes;}

