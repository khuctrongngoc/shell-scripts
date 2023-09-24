#!/bin/bash

# rm -rf ~/.condarc ~/.conda ~/.continuum ~/miniconda3
MINICONDA_FOLDER="$HOME/miniconda3"
TMP_FOLDER=".TMP"
MINICONDA_FILE="$TMP_FOLDER/Miniconda3-latest-Linux.sh"
ENV_NAME="damo"

if [ ! -f "$MINICONDA_FILE" ]; then
    mkdir $TMP_FOLDER
    wget -O $MINICONDA_FILE https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    echo $MINICONDA_FILE downloaded
    
else
    echo $MINICONDA_FILE exists
fi

if [ ! -d "$MINICONDA_FOLDER" ]; then
    bash $MINICONDA_FILE -b -u -p ~/miniconda3
    ~/miniconda3/bin/conda init bash
else
    echo Conda environment exists at $MINICONDA_FOLDER
fi

if { conda env list | grep "$ENV_NAME"; } >/dev/null 2>&1; then
    echo Environtment $ENV_NAME exists
    source /$HOME/miniconda3/bin/activate $ENV_NAME
    which python
else
    conda create -y -n $ENV_NAME python=3.7
    source /$HOME/miniconda3/bin/activate $ENV_NAME
    which python
    pip install -r resources/requirements.txt
fi
