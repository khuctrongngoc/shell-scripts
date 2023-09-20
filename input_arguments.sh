#!/bin/bash

i=1

for x in $@
do
    echo "Arguments $i: $x"
    ((i++))
done
