#!/usr/bin/env bash

######################################################################
# @author      : Óscar Heredia (65867332+OscHer@users.noreply.github.com)
# @file        : bootstrap.sh
# @created     : jueves oct 31, 2024 15:40:23 CET
#
# @description : bootstrap script for Rust development environment 
######################################################################

apt-get update && apt-get upgrade -y
apt-get install curl vim git bash-completion -y
