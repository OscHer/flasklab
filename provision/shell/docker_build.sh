#!/usr/bin/env bash

######################################################################
# @author      : Óscar Heredia (65867332+OscHer@users.noreply.github.com)
# @file        : docker_build.sh
# @created     : sábado nov 23, 2024 14:38:03 CET
#
# @description : Build docker images 
######################################################################

DOCKERFILE_PATH1="/vagrant/flask/holamundo/"
APPLICATION_NAME1="holamundo"

docker build -t $APPLICATION_NAME1 $DOCKERFILE_PATH1

docker run -d -p 5000:5000 holamundo 

