#!/bin/bash
ENV_NAME="damo"

if { conda env list | grep "$ENV_NAME";} >/dev/null 2>&1; then
    echo Environtment $ENV_NAME exists
    source /home/ngockhuc/miniconda3/bin/activate $ENV_NAME
    which python
else
    echo Createing d
    conda create -y -n $ENV_NAME python=3.7
    source /home/ngockhuc/miniconda3/bin/activate $ENV_NAME
    which python
    pip install -r requirements.txt
fi
