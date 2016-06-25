#! /bin/bash

extract-long-sequences.py -l 200 $1 > $(basename $1).200.fa
#cd-hit-est -i $(basename $1).200.fa -c 0.99 -o $(basename $1).200.cdhit.fa
