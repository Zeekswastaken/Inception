#!/bin/bash
if [ ! -d "/home/${USER}/data"]; then
    mkdir ~/data 
    mkdir ~/data/wp
    mkdir ~/data/db
fi