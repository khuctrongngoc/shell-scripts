#!/bin/bash

file="../linux_bash/if.sh"
echo $file
if [ -f "$file" ]; then
    echo $file exists
else
    echo $file doesn\'t exist
fi