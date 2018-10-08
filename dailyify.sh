#!/bin/bash

# This converts a directory full of bro output logs so that there is only
# one log file per type.
# Works well with bro on Security Onion

# If pigz isn't installed, run something like:
# apt install pigz
# yum install pigz
# dnf install pigz

# Example:
# cd /nsm/bro/logs/2018-10-08
# dailyify.sh

time ls | cut -f 1 -d. | sort -u | while read i
do
        echo $i
        ls ${i}* | xargs zcat | pigz > daily.gz
        mv daily.gz ${i}.gz
done
