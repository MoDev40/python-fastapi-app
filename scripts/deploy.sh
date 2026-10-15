#!/bin/bash

##########################
# Author: Muktar
# Date: 10/14/2026
# Version: 1.0.0 
# This deployment script uses release based deployment with self-hosted github actions
###########################

set -e
set -o pipefail

APP_NAME=python-fastapi-app
# generate release using timestamp
RELEASE=$(date +%F_%H%M%S)

# change directory to releases
cd ~/apps/$APP_NAME/releases

# clone codebase using  generated release directory
git clone https://github.com/MoDev40/python-fastapi-app.git $RELEASE

cd $RELEASE

# initiate virtual environment
python3 -m venv venv
# activate 
. venv/bin/activate

# install dependencies 
pip install -r requirements.txt

cd ..

# link the release to current directory
ln -sfn $RELEASE current

sudo systemctl restart python-fastapi-app.service

sudo systemctl status python-fastapi-app.service
