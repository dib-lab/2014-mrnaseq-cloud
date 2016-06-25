#! /bin/bash
for i in $*
do
    echo $(grep 'No hits found' $i | wc -l) $i
done | sort -n

