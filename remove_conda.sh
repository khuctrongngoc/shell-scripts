#!/bin/bash

# rm -rf ~/.condarc ~/.conda ~/.continuum ~/miniconda3
MINICONDA_FILE="Miniconda3-latest-Linux.sh"
mkdir tmpfolder
cd tmpfolder
if test -f "$MINICONDA_FILE"; then
    echo $MINICONDA_FILE exists
else
    wget -O $MINICONDA_FILE https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    echo $MINICONDA_FILE downloaded
fi

bash $MINICONDA_FILE -b -u -p ~/miniconda3
cd ..
rm -rf tmpfolder