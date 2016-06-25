#! /bin/bash

extract-long-sequences.py -l 200 $1 > $(basename $1).200.fa
