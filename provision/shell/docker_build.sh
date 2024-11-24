#!/usr/bin/env bash

######################################################################
# @author      : Óscar Heredia (65867332+OscHer@users.noreply.github.com)
# @file        : docker_build.sh
# @created     : sábado nov 23, 2024 14:38:03 CET
#
# @description : Build docker images 
######################################################################

DOCKERFILE_PATH="/vagrant/flask/holamundo/"
APPLICATION_NAME="holamundo"

docker build -t $APPLICATION_NAME $DOCKERFILE_PATH

