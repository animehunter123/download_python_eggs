#!/bin/bash

#read -p "This app will create a ./python_libraries folder with EGGs found in your ./requirements.txt. PRESS CTRL C TO CANCEL, or ENTER TO CONTINUE"

docker image rm -f python38-downloadeggs_python_env
rm -rf python_libraries 2>/dev/null
mkdir python_libraries
cp ./requirements.txt ./python_libraries
docker-compose build
docker-compose run --rm python_env

