#!/bin/bash

MINICONDA_FOLDER="$HOME/miniconda3"
ls $MINICONDA_FOLDER
if [  -d "$MINICONDA_FOLDER" ]; then 
    echo Conda environment exists at $MINICONDA_FOLDER
else
    echo Conda environtment not exitst at $MINICONDA_FOLDER
fi
